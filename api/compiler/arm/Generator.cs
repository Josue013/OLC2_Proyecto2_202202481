using System.Text;

public class ArmGenerator
{
  private readonly List<string> instructions = new List<string>();
  private readonly StandardLibrary stdLib = new StandardLibrary();

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

  // Comments
  public void Comment(string comment)
  {
    instructions.Add($"// {comment}");
  }

  public override string ToString()
  {
    var sb = new StringBuilder();
    sb.AppendLine(".text");
    sb.AppendLine(".global _start");
    sb.AppendLine("_start:");

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