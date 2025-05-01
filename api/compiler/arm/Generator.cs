using System.Text;

public class StackObject
{
  public enum StackObjectType { Int, Float, String, Bool, Rune, Nil, Undefined, Void, Slice }
  public StackObjectType Type { get; set; }
  public int Length { get; set; }
  public int Depth { get; set; }
  public string? Id { get; set; }
  public int Offset { get; set; }

}

public class ArmGenerator
{
  public List<string> instructions = new List<string>();
  public List<string> funcInstructions = new List<string>();
  public readonly StandardLibrary stdLib = new StandardLibrary();
  private List<StackObject> stack = new List<StackObject>();
  public int depth = 0;
  private int labelCounter = 0;

  public string GetLabel()
  {
    return $"L{labelCounter++}";
  }

  public void SetLabel(string label)
  {
    instructions.Add($"{label}:");
  }

  // ---------------- Stack Operations ----------------

  public StackObject TopObject()
  {
    return stack.Last();
  }

  public void PushObject(StackObject obj)
  {
    Comment($"Pushing object {obj.Id} of type {obj.Type}");
    stack.Add(obj);
  }

  public void PushConstant(StackObject obj, object value)
  {
    switch (obj.Type)
    {
      case StackObject.StackObjectType.Int:
        Mov(Register.X0, (int)value);
        Push(Register.X0);
        break;
      case StackObject.StackObjectType.Bool:
        Mov(Register.X0, (bool)value ? 1 : 0);
        Push(Register.X0);
        break;
      case StackObject.StackObjectType.Float:
        long floatBits = BitConverter.DoubleToInt64Bits((double)value);

        // Usar MOVZ solo para el primer segmento
        instructions.Add($"MOVZ X0, #{floatBits & 0xFFFF}, LSL #0");

        // Usar MOVK para los segmentos restantes
        for (int i = 1; i < 4; i++)
        {
          long segment = (floatBits >> (i * 16)) & 0xFFFF;
          instructions.Add($"MOVK X0, #{segment}, LSL #{16 * i}");
        }

        Push(Register.X0);
        break;
      case StackObject.StackObjectType.String:
        List<byte> stringArray = Utils.StringTo1ByteArray((string)value);

        Push(Register.HP);
        for (int i = 0; i < stringArray.Count; i++)
        {
          var charCode = stringArray[i];
          // Modificar solo esta línea para manejar caracteres especiales en comentarios
          var charDisplay = charCode == 10 ? "LF" :
                           charCode == 9 ? "TAB" :
                           charCode == 13 ? "CR" :
                           ((char)charCode).ToString();
          Comment($"Pushing char {charCode} to heap - {charDisplay}");

          Mov("w0", charCode);
          Strb("w0", Register.HP);
          Mov(Register.X0, 1);
          Add(Register.HP, Register.HP, Register.X0);
        }

        break;
      case StackObject.StackObjectType.Rune:
        // Para rune el valor ASCII del carácter
        Mov(Register.X0, (int)((char)value));
        Push(Register.X0);
        break;
      case StackObject.StackObjectType.Nil:
        // Para nil, simplemente se guarda un 0
        Mov(Register.X0, 0);
        Push(Register.X0);
        break;
    }

    PushObject(obj);
  }

  public StackObject PopObject(string rd)
  {
    var obj = stack.Last();
    stack.RemoveAt(stack.Count - 1);

    Pop(rd);
    return obj;
  }

  public void PopObject()
  {
    Comment("Popping objecto form stack");
    try
    {
      stack.RemoveAt(stack.Count - 1);
    }
    catch (Exception e)
    {
      Console.WriteLine(e.Message);
      throw new Exception("Stack is empty");
    }
  }

  public StackObject IntObject()
  {
    return new StackObject
    {
      Type = StackObject.StackObjectType.Int,
      Length = 8,
      Depth = depth,
      Id = null
    };
  }

  public StackObject BoolObject()
  {
    return new StackObject
    {
      Type = StackObject.StackObjectType.Bool,
      Length = 8,
      Depth = depth,
      Id = null
    };
  }

  public StackObject FloatObject()
  {
    return new StackObject
    {
      Type = StackObject.StackObjectType.Float,
      Length = 8,
      Depth = depth,
      Id = null
    };
  }

  public StackObject StringObject()
  {
    return new StackObject
    {
      Type = StackObject.StackObjectType.String,
      Length = 8,
      Depth = depth,
      Id = null
    };
  }

  public StackObject RuneObject()
  {
    return new StackObject
    {
      Type = StackObject.StackObjectType.Rune,
      Length = 8,        // Un carácter ocupa 8 bytes en ARM64
      Depth = depth,
      Id = null
    };
  }

  public StackObject NilObject()
  {
    return new StackObject
    {
      Type = StackObject.StackObjectType.Nil,
      Length = 8,
      Depth = depth,
      Id = null
    };
  }

  public StackObject CloneObject(StackObject obj)
  {
    return new StackObject
    {
      Type = obj.Type,
      Length = obj.Length,
      Depth = obj.Depth,
      Id = obj.Id
    };
  }

  // ---------------- Environment operations ----------------
  public void NewScope()
  {
    depth++;
  }

  public int EndScope()
  {
    int byteOffset = 0;

    for (int i = stack.Count - 1; i >= 0; i--)
    {
      if (stack[i].Depth == depth)
      {
        byteOffset += stack[i].Length;
        stack.RemoveAt(i);
      }
    }
    depth--;
    return byteOffset;
  }

  public void TagObject(string id)
  {
    stack.Last().Id = id;
  }

  public int GetTemporaryValues()
  {
    // Contar cuántos valores temporales hay en la pila que no están asociados a variables
    int byteCount = 0;
    foreach (var obj in stack)
    {
      if (obj.Id == null) // Es un valor temporal (no es una variable)
      {
        byteCount += obj.Length;
      }
    }
    return byteCount;
  }

  public void CleanStack(int bytes)
  {
    if (bytes > 0)
    {
      Comment($"Cleaning {bytes} bytes from stack");
      Add(Register.SP, Register.SP, bytes);
    }
  }

  public int CleanTemporaries()
  {
    int bytesCleaned = 0;
    // Itera hacia atrás para eliminar de forma segura
    for (int i = stack.Count - 1; i >= 0; i--)
    {
      // Asumiendo que los temporales tienen Id == null
      if (stack[i].Id == null)
      {
        bytesCleaned += stack[i].Length;
        stack.RemoveAt(i); // Eliminar del stack lógico
        Pop(Register.X0);  // Eliminar del stack físico (ajusta SP)
      }
      else
      {
        break;
      }
    }
    return bytesCleaned;
  }

  public (int, StackObject) GetObject(string id)
  {
    int byteOffset = 0;

    for (int i = stack.Count - 1; i >= 0; i--)
    {
      if (stack[i].Id == id)
      {
        return (byteOffset, stack[i]);
      }
      byteOffset += stack[i].Length;
    }

    throw new Exception($"Object with id {id} not found");
  }

  // Instruction Add 
  public void Add(string rd, string rn, string rm)
  {
    instructions.Add($"ADD {rd}, {rn}, {rm}");
  }

  public void Add(string rd, string rn, int rm)
  {
    instructions.Add($"ADD {rd}, {rn}, {rm}");
  }

  public void Adr(string rd, string label)
  {
    instructions.Add($"ADR {rd}, {label}");
  }

  // Instruction Sub
  public void Sub(string rd, string rn, string rm)
  {
    instructions.Add($"SUB {rd}, {rn}, {rm}");
  }

  public void Sub(string rd, string rn, int rm)
  {
    instructions.Add($"SUB {rd}, {rn}, {rm}");
  }

  // Instruction Mul
  public void Mul(string rd, string rn, string rm)
  {
    instructions.Add($"MUL {rd}, {rn}, {rm}");
  }

  // Instruction Div
  public void Div(string rd, string rn, string rm)
  {
    instructions.Add($"SDIV {rd}, {rn}, {rm}");
  }

  // Add immediate
  public void AddImmediate(string rd, string rn, int imm)
  {
    instructions.Add($"ADDI {rd}, {rn}, #{imm}");
  }

  // ---------------- Memory Operations ----------------
  public void Str(string rs, string rt, int offset = 0)
  {
    instructions.Add($"STR {rs}, [{rt}, #{offset}]");
  }

  public void Strb(string rs, string rt)
  {
    instructions.Add($"STRB {rs}, [{rt}]");
  }

  public void Ldrb(string rt, string rs)
  {
    instructions.Add($"LDRB {rt}, [{rs}]");
  }

  public void Ldr(string rt, string rs, int offset = 0)
  {
    instructions.Add($"LDR {rt}, [{rs}, #{offset}]");
  }

  // Mov Instruction
  public void Mov(string rd, int imm)
  {
    instructions.Add($"MOV {rd}, #{imm}");
  }

  public void Mov(string rd, string rs)
  {
    instructions.Add($"MOV {rd}, {rs}");
  }

  // Push Instruction
  public void Push(string rs)
  {
    instructions.Add($"STR {rs}, [SP, #-8]!");
  }

  // Pop Instruction
  public void Pop(string rd)
  {
    instructions.Add($"LDR {rd}, [SP], #8");
  }

  public void Fcvtzs(string rd, string rn)
  {
    instructions.Add($"FCVTZS {rd}, {rn}");
  }

  // Float Operations 

  public void Scvtf(string rd, string rs)
  {
    instructions.Add($"SCVTF {rd}, {rs}");
  }

  public void Fmov(string rd, string rs)
  {
    instructions.Add($"FMOV {rd}, {rs}");
  }

  public void Fadd(string rd, string rn, string rm)
  {
    instructions.Add($"FADD {rd}, {rn}, {rm}");
  }

  public void Fsub(string rd, string rn, string rm)
  {
    instructions.Add($"FSUB {rd}, {rn}, {rm}");
  }

  public void Fmul(string rd, string rn, string rm)
  {
    instructions.Add($"FMUL {rd}, {rn}, {rm}");
  }

  public void Fdiv(string rd, string rn, string rm)
  {
    instructions.Add($"FDIV {rd}, {rn}, {rm}");
  }

  public void Cbz(string rs, string label)
  {
    instructions.Add($"CBZ {rs}, {label}");
  }

  public void Cbnz(string rs, string label)
  {
    instructions.Add($"CBNZ {rs}, {label}");
  }

  public void Cmp(string rs1, string rs2)
  {
    instructions.Add($"CMP {rs1}, {rs2}");
  }

  public void Cmp(string rs1, int rs2)
  {
    instructions.Add($"CMP {rs1}, {rs2}");
  }

  public void Fcmp(string rs1, string rs2)
  {
    instructions.Add($"FCMP {rs1}, {rs2}");
  }

  public void Beq(string label)
  {
    instructions.Add($"BEQ {label}");
  }

  public void Bne(string label)
  {
    instructions.Add($"BNE {label}");
  }

  public void Bgt(string label)
  {
    instructions.Add($"BGT {label}");
  }

  public void Blt(string label)
  {
    instructions.Add($"BLT {label}");
  }

  public void Bge(string label)
  {
    instructions.Add($"BGE {label}");
  }

  public void Ble(string label)
  {
    instructions.Add($"BLE {label}");
  }

  public void Br(string label)
  {
    instructions.Add($"BR {label}");
  }

  public void Bl(string label)
  {
    instructions.Add($"BL {label}");
  }

  public void B(string label)
  {
    instructions.Add($"B {label}");
  }


  // Svc Instruction
  public void Svc()
  {
    instructions.Add("SVC #0");
  }

  // End Program
  public void EndProgram()
  {
    Mov(Register.X0, 0);  // return value
    Mov(Register.X8, 93); // exit syscall_num
    Svc();                // generic syscall
  }

  public void PrintInteger(string rs)
  {
    stdLib.Use("print_integer");
    instructions.Add($"MOV X0, {rs}");
    instructions.Add($"BL print_integer");
  }

  public void PrintSlice(string rs)
  {
    // Usar la función print_slice de la librería estándar
    stdLib.Use("print_slice");
    instructions.Add($"MOV X0, {rs}");
    instructions.Add($"BL print_slice");
  }

  public void PrintString(string rs)
  {
    stdLib.Use("print_string");
    instructions.Add($"MOV X0, {rs}");
    instructions.Add($"BL print_string");
  }

  public void PrintFloat()
  {
    stdLib.Use("print_integer");
    stdLib.Use("print_double");
    instructions.Add("BL print_double");
  }

  public void PrintBool(string rs)
  {
    stdLib.Use("print_bool");
    instructions.Add($"MOV X0, {rs}");
    instructions.Add($"BL print_bool");
  }

  public void PrintRune(string rs)
  {
    // Imprime un carácter individual (rune)
    stdLib.Use("print_rune");
    instructions.Add($"MOV X0, {rs}");
    instructions.Add($"BL print_rune");
  }

  // Comments
  public void Comment(string comment)
  {
    instructions.Add($"// {comment}");
  }

  public override string ToString()
  {
    var sb = new StringBuilder();
    sb.AppendLine(".data");
    sb.AppendLine("heap: .space 4096");
    sb.AppendLine(".text");
    sb.AppendLine(".global _start");
    sb.AppendLine("_start:");
    sb.AppendLine("    adr x10, heap");

    EndProgram(); // Ensure program ends

    // añadir instrucciones
    foreach (var instruction in instructions)
    {
      sb.AppendLine(instruction);
    }

    // añadir funciones de la libreria estandar
    sb.AppendLine("\n\n\n// Funciones Foraneas");
    funcInstructions.ForEach(instruction => sb.AppendLine(instruction));

    sb.AppendLine("\n\n\n// Libreria Estandar");
    sb.AppendLine(stdLib.GetFunctionDefinitions());

    return sb.ToString();
  }

  public StackObject GetFrameLocal(int index)
  {
    var localVars = stack.Where(o => o.Type == StackObject.StackObjectType.Undefined).ToList();

    // Verificar si hay variables locales antes de acceder
    if (!localVars.Any())
    {
      // Retornar un objeto temporal si no hay variables locales
      return new StackObject
      {
        Type = StackObject.StackObjectType.Undefined,
        Id = null,
        Offset = index,
        Length = 8
      };
    }

    return localVars[index];
  }



}