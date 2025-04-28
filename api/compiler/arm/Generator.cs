using System.Text;

public class StackObject
{
  public enum StackObjectType { Int, Float, String, Bool}
  public StackObjectType Type { get; set; }
  public int Length { get; set; }
  public int Depth { get; set; }
  public string? Id { get; set; }

}

public class ArmGenerator
{
  public readonly List<string> instructions = new List<string>();
  private readonly StandardLibrary stdLib = new StandardLibrary();
  private List<StackObject> stack = new List<StackObject>();
  private int depth = 0;
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
        Mov(Register.X0,1);
        Add(Register.HP, Register.HP, Register.X0);
    }

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

    for (int i = stack.Count -1; i >= 0; i--)
    {
      if (stack[i].Depth == depth)
      {
        byteOffset += stack[i].Length;
        stack.RemoveAt(i);
      }else{
        break;
      }  
    }
    depth--;
    return byteOffset;
  }

  public void TagObject(string id)
  {
    stack.Last().Id = id;
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

  // Instruction Sub
  public void Sub(string rd, string rn, string rm)
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

  public void Ldr(string rt, string rs, int offset = 0)
  {
    instructions.Add($"LDR {rt}, [{rs}, #{offset}]");
  }

  // Mov Instruction
  public void Mov(string rd, int imm)
  {
    instructions.Add($"MOV {rd}, #{imm}");
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

  public void Cmp(string rs1, string rs2)
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
    sb.AppendLine("\n\n\n// Libreria Estandar");
    sb.AppendLine(stdLib.GetFunctionDefinitions());

    return sb.ToString();
  }



}