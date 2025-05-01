
using analyzer;
using Antlr4.Runtime.Misc;
using api.compiler;
using System.Text;
using SliceValue = api.compiler.SliceValue;


public class FunctionMetadata
{
  public int FrameSize;
  public StackObject.StackObjectType ReturnType;
}

public class CompilerVisitor : LanguageBaseVisitor<Object?>
{

  public ArmGenerator Code = new ArmGenerator();
  private String ContinueLabel = "";
  private String BreakLabel = "";
  private String ReturnLabel = "";

  private Dictionary<string, FunctionMetadata> Functions = new Dictionary<string, FunctionMetadata>();
  private string? insideFunction = null;
  private int framePointerOffset = 0;

  public CompilerVisitor()
  {

  }

  public override Object? VisitProgram(LanguageParser.ProgramContext context)
  {

    foreach (var dcl in context.dcl())
    {
      Visit(dcl);
    }

    return null;
  }

  StackObject.StackObjectType GetType(string type)
  {
    return type switch
    {
      "int" => StackObject.StackObjectType.Int,
      "float64" => StackObject.StackObjectType.Float,
      "string" => StackObject.StackObjectType.String,
      "bool" => StackObject.StackObjectType.Bool,
      "rune" => StackObject.StackObjectType.Rune,
      _ => throw new Exception($"Tipo no soportado: {type}")
    };
  }

  public override Object? VisitVarDcl(LanguageParser.VarDclContext context)
  {
    var varName = context.ID().GetText();
    string type = context.type().GetText();
    Code.Comment("Variable declaration: " + varName + " of type " + type);

    if (context.expr() == null)
    {
      // Si no hay expresión, usar valor por defecto según el tipo
      var defaultObj = type switch
      {
        "int" => Code.IntObject(),
        "float64" => Code.FloatObject(),
        "string" => Code.StringObject(),
        "bool" => Code.BoolObject(), // bool se maneja como int (0=false, 1=true)
        "rune" => Code.RuneObject(),
        _ => throw new Exception($"Tipo no soportado: {type}")
      };

      // Generar el valor por defecto
      Code.Comment("Default value");
      switch (type)
      {
        case "int":
          Code.PushConstant(defaultObj, 0);
          break;
        case "float64":
          Code.PushConstant(defaultObj, 0.0);
          break;
        case "string":
          Code.PushConstant(defaultObj, "");
          break;
        case "bool":
          Code.PushConstant(defaultObj, false); // false
          break;
        case "rune":
          Code.PushConstant(defaultObj, '\0');
          break;
      }
    }
    else
    {
      // Si hay expresión, evaluarla normalmente
      Visit(context.expr());

      if (insideFunction != null)
      {
        var localObject = Code.GetFrameLocal(framePointerOffset);
        var valueObject = Code.PopObject(Register.X0);

        Code.Mov(Register.X1, framePointerOffset * 8); // !! <-- Move the offset to x1
        Code.Sub(Register.X1, Register.FP, Register.X1); // Subtract offset from FP
        Code.Str(Register.X0, Register.X1); // Store the value in the local variable

        localObject.Type = valueObject.Type;
        framePointerOffset++;
        return null;
      }

    }

    Code.TagObject(varName);
    return null;
  }

  public override Object? VisitVarDcl2(LanguageParser.VarDcl2Context context)
  {

    var varName = context.ID().GetText();
    Code.Comment("Variable declaration: " + varName);

    Visit(context.expr());

    if (insideFunction != null)
    {
      var localObject = Code.GetFrameLocal(framePointerOffset);
      var valueObject = Code.PopObject(Register.X0);

      Code.Mov(Register.X1, framePointerOffset * 8); // !! <-- Move the offset to x1
      Code.Sub(Register.X1, Register.FP, Register.X1); // Subtract offset from FP
      Code.Str(Register.X0, Register.X1); // Store the value in the local variable

      localObject.Type = valueObject.Type;
      framePointerOffset++;
      return null;
    }

    Code.TagObject(varName);

    return null;
  }

  public override Object? VisitAssign(LanguageParser.AssignContext context)
  {
    var assignee = context.expr(0);



    if (assignee is LanguageParser.IdentifierContext idContext)
    {
      string varName = idContext.ID().GetText();


      // Asignación normal
      Code.Comment("Assignment to variable: " + varName);
      Visit(context.expr(1));

      var valueObject = Code.PopObject(Register.X0);
      var (offset, varObject) = Code.GetObject(varName);

      if (insideFunction != null)
      {
        Code.Mov(Register.X1, varObject.Offset * 8);
        Code.Sub(Register.X1, Register.FP, Register.X1); // Subtract offset from FP
        Code.Str(Register.X0, Register.X1); // Store the value in the local variable
        return null;
      }
      else
      {
        Code.Mov(Register.X1, offset);
        Code.Add(Register.X1, Register.SP, Register.X1);
        Code.Str(Register.X0, Register.X1);

        varObject.Type = valueObject.Type;

        Code.Push(Register.X0);
        Code.PushObject(Code.CloneObject(varObject));
      }



    }

    return null;
  }

  public override Object? VisitExprStmt(LanguageParser.ExprStmtContext context)
  {

    Code.Comment("Expression statement");
    Visit(context.expr());
    Code.Comment("Popping value to discard");
    Code.PopObject(Register.X0);

    return null;
  }

  public override Object? VisitPrintStmt(LanguageParser.PrintStmtContext context)
  {
    Code.Comment("Print statement");
    bool isFirst = true;

    foreach (var expr in context.exprList().expr())
    {
      if (!isFirst)
      {
        Code.Comment("Print space between values");
        Code.Mov("w0", 32);
        Code.Push("x0");
        Code.PrintString(Register.SP);
        Code.Add(Register.SP, Register.SP, 8);
      }

      if (expr is LanguageParser.IdentifierContext idContext)
      {
        string id = idContext.ID().GetText();
        var (offset, obj) = Code.GetObject(id);

        if (obj.Type == StackObject.StackObjectType.Slice)
        {
          Code.Comment($"Imprimiendo slice {id}");

          // 1. Obtener dirección base del slice desde el stack
          Code.Mov(Register.X19, offset);
          Code.Add(Register.X19, Register.SP, Register.X19);
          Code.Ldr(Register.X19, Register.X19);  // X19 = dirección heap

          // 2. Leer tamaño del slice
          Code.Ldr(Register.X20, Register.X19); // X20 = tamaño
          Code.Add(Register.X19, Register.X19, 8); // Saltar el tamaño

          // 3. Imprimir "["
          Code.stdLib.Use("open_bracket");
          Code.instructions.Add($"MOV x0, #1");
          Code.instructions.Add($"ADR x1, open_bracket");
          Code.instructions.Add($"MOV x2, #1");
          Code.instructions.Add($"MOV x8, #64");
          Code.instructions.Add($"SVC #0");

          // 4. Imprimir elementos
          // 4. Imprimir elementos
          Code.Mov(Register.X21, 0); // X21 = índice

          var loopLabel = Code.GetLabel();
          var endLabel = Code.GetLabel();

          Code.SetLabel(loopLabel);
          Code.Cmp(Register.X21, Register.X20);
          Code.Beq(endLabel);

        ifBlock:
          Code.Cmp(Register.X21, 0);
          var skipComma = Code.GetLabel();
          Code.Beq(skipComma);

          // Imprimir coma y espacio
          Code.stdLib.Use("comma_space");
          Code.instructions.Add($"MOV x0, #1");
          Code.instructions.Add($"ADR x1, comma_space");
          Code.instructions.Add($"MOV x2, #2");
          Code.instructions.Add($"MOV x8, #64");
          Code.instructions.Add($"SVC #0");

          Code.SetLabel(skipComma);

          // Imprimir elemento actual
          Code.Ldr(Register.X0, Register.X19);
          Code.PrintInteger(Register.X0);

          // Avanzar al siguiente elemento
          Code.Add(Register.X19, Register.X19, 8);
          Code.Add(Register.X21, Register.X21, 1);
          Code.B(loopLabel);

          Code.SetLabel(endLabel);

          // 5. Imprimir "]"
          Code.stdLib.Use("close_bracket");
          Code.instructions.Add($"MOV x0, #1");
          Code.instructions.Add($"ADR x1, close_bracket");
          Code.instructions.Add($"MOV x2, #1");
          Code.instructions.Add($"MOV x8, #64");
          Code.instructions.Add($"SVC #0");
        }
        else
        {
          Code.Mov(Register.X0, offset);
          Code.Add(Register.X0, Register.SP, Register.X0);
          Code.Ldr(Register.X0, Register.X0);

          if (obj.Type == StackObject.StackObjectType.Int)
          {
            Code.PrintInteger(Register.X0);
          }
          else if (obj.Type == StackObject.StackObjectType.String)
          {
            Code.PrintString(Register.X0);
          }
          else if (obj.Type == StackObject.StackObjectType.Float)
          {
            Code.PrintFloat();
          }
          else if (obj.Type == StackObject.StackObjectType.Bool)
          {
            Code.PrintBool(Register.X0);
          }
          else if (obj.Type == StackObject.StackObjectType.Rune)
          {
            Code.PrintRune(Register.X0);
          }
        }
      }
      else
      {
        Visit(expr);
        var isDouble = Code.TopObject().Type == StackObject.StackObjectType.Float;
        var value = Code.PopObject(isDouble ? Register.D0 : Register.X0);

        if (value.Type == StackObject.StackObjectType.Int)
        {
          Code.PrintInteger(Register.X0);
        }
        else if (value.Type == StackObject.StackObjectType.String)
        {
          Code.PrintString(Register.X0);
        }
        else if (value.Type == StackObject.StackObjectType.Float)
        {
          Code.PrintFloat();
        }
        else if (value.Type == StackObject.StackObjectType.Bool)
        {
          Code.PrintBool(Register.X0);
        }
        else if (value.Type == StackObject.StackObjectType.Rune)
        {
          Code.PrintRune(Register.X0);
        }
        else if (value.Type == StackObject.StackObjectType.Nil)
        {
          Code.stdLib.Use("nil_str");
          Code.instructions.Add($"MOV X0, #1");
          Code.instructions.Add($"ADR X1, nil_str");
          Code.instructions.Add($"MOV X2, #3");
          Code.instructions.Add($"MOV X8, #64");
          Code.instructions.Add($"SVC #0");
        }
      }

      isFirst = false;
    }

    // Imprimir salto de línea al final
    Code.Comment("Print newline");
    Code.Mov("w0", 10);
    Code.Push("x0");
    Code.PrintString(Register.SP);
    Code.Add(Register.SP, Register.SP, 8);

    return null;
  }

  public override Object? VisitIdentifier(LanguageParser.IdentifierContext context)
  {

    var id = context.ID().GetText();

    var (offset, obj) = Code.GetObject(id); // Get the variable object

    if (insideFunction != null)
    {
      Code.Mov(Register.X0, obj.Offset * 8);
      Code.Sub(Register.X0, Register.FP, Register.X0); // Subtract offset from FP
      Code.Ldr(Register.X0, Register.X0); // Load the value from the address
      Code.Push(Register.X0); // Push the value to the stack
      var cloneObject = Code.CloneObject(obj); // Clone the object
      cloneObject.Id = null;
      Code.PushObject(cloneObject); // Push the object to the stack
      return null;
    }

    Code.Mov(Register.X0, offset); // Move the offset to X0
    Code.Add(Register.X0, Register.SP, Register.X0); // Add the offset to SP to get the address

    Code.Ldr(Register.X0, Register.X0); // Load the value from the address
    Code.Push(Register.X0); // Push the value to the stack

    var newObject = Code.CloneObject(obj); // Clone the object
    newObject.Id = null;
    Code.PushObject(newObject); // Push the object to the stack


    return null;
  }

  public override Object? VisitParens(LanguageParser.ParensContext context)
  {
    return Visit(context.expr());
  }

  public override Object? VisitNegate(LanguageParser.NegateContext context)
  {
    Code.Comment("Negate operation");
    Visit(context.expr());

    var isDecimal = Code.TopObject().Type == StackObject.StackObjectType.Float;
    var value = Code.PopObject(isDecimal ? Register.D0 : Register.X0);

    if (isDecimal)
    {
      // Para números decimales, usar instrucción FNEG
      Code.Comment("Negating decimal value");
      Code.instructions.Add($"FNEG {Register.D0}, {Register.D0}");
      Code.Push(Register.D0);
    }
    else
    {
      // Para enteros, usar instrucción NEG
      Code.Comment("Negating integer value");
      Code.instructions.Add($"NEG {Register.X0}, {Register.X0}");
      Code.Push(Register.X0);
    }

    // Mantener el tipo del objeto
    Code.PushObject(Code.CloneObject(value));

    return null;
  }

  public override Object? VisitInt(LanguageParser.IntContext context)
  {
    var value = context.INT().GetText();
    Code.Comment("Constant: " + value);

    var intObject = Code.IntObject();
    Code.PushConstant(intObject, int.Parse(value));

    return null;
  }

  public override Object? VisitDecimal(LanguageParser.DecimalContext context)
  {

    var value = context.DECIMAL().GetText();
    Code.Comment("Decimal constant: " + value);
    var floatObjet = Code.FloatObject();
    Code.PushConstant(floatObjet, double.Parse(value));


    return null;
  }

  public override Object? VisitBool(LanguageParser.BoolContext context)
  {
    var value = context.BOOL().GetText();
    Code.Comment("Boolean constant: " + value);
    var BoolObject = Code.BoolObject();
    Code.PushConstant(BoolObject, value == "true" ? true : false);
    return null;
  }

  public override Object? VisitNil(LanguageParser.NilContext context)
  {
    Code.Comment("Nil constant");
    var nilObject = Code.NilObject();
    Code.PushConstant(nilObject, 0);  // El valor real no importa para nil
    return null;
  }

  public override Object? VisitString(LanguageParser.StringContext context)
  {

    var value = context.STRING().GetText().Trim('"');
    Code.Comment("String constant: " + value.ToString());

    var stringObject = Code.StringObject();
    Code.PushConstant(stringObject, value); // Push the string constant to the stack

    return null;
  }

  public override Object? VisitRune(LanguageParser.RuneContext context)
  {
    // El texto viene con comillas simples: 'c'
    var runeText = context.RUNE().GetText().Trim('\'');

    // Manejar secuencias de escape
    char runeValue;
    if (runeText.StartsWith("\\"))
    {
      switch (runeText.Substring(1))
      {
        case "n": runeValue = '\n'; break;
        case "r": runeValue = '\r'; break;
        case "t": runeValue = '\t'; break;
        case "\"": runeValue = '\"'; break;
        case "\'": runeValue = '\''; break;
        case "\\": runeValue = '\\'; break;
        default: runeValue = runeText[1]; break;
      }
    }
    else
    {
      runeValue = runeText[0];
    }

    Code.Comment($"Rune constant: '{runeValue}'");

    var runeObject = Code.RuneObject();
    Code.PushConstant(runeObject, runeValue);

    return null;
  }

  public override Object? VisitBlockStmt(LanguageParser.BlockStmtContext context)
  {

    Code.Comment("Block statement");
    Code.NewScope();

    foreach (var dcl in context.dcl())
    {
      Visit(dcl);
    }

    int bytesToRemove = Code.EndScope();

    if (bytesToRemove > 0)
    {
      Code.Comment("Removing " + bytesToRemove + " bytes from stack");
      Code.Mov(Register.X0, bytesToRemove);
      Code.Add(Register.SP, Register.SP, Register.X0);
      Code.Comment("Stack pointer adjusted");


    }

    return null;
  }

  public override Object? VisitMulDiv(LanguageParser.MulDivContext context)
  {

    Code.Comment("Mul/Div operation");
    var operation = context.op.Text;

    // 1 * 2
    // top -> []
    Code.Comment("Visiting left operand");
    Visit(context.expr(0)); // Visit 2; top -> [2, 1]
    Code.Comment("Visiting right operand");
    Visit(context.expr(1)); // Visit 1; top -> [1]

    Code.Comment("Popping operands");
    var isRightDecimal = Code.TopObject().Type == StackObject.StackObjectType.Float;
    var right = Code.PopObject(isRightDecimal ? Register.D0 : Register.X0); // Pop 2; top -> [1]
    var isLeftDecimal = Code.TopObject().Type == StackObject.StackObjectType.Float;
    var left = Code.PopObject(isLeftDecimal ? Register.D1 : Register.X1); // Pop 1; top -> []

    if (isLeftDecimal || isRightDecimal)
    {
      if (!isLeftDecimal) Code.Scvtf(Register.D1, Register.X1); // Convert left to float
      if (!isRightDecimal) Code.Scvtf(Register.D0, Register.X0); // Convert right to float

      if (operation == "*")
      {
        Code.Fmul(Register.D0, Register.D0, Register.D1); // D0 = D0 + D1
      }
      else if (operation == "/")
      {
        Code.Fdiv(Register.D0, Register.D1, Register.D0); // D0 = D1 - D0
      }

      Code.Comment("Pushing result");
      Code.Push(Register.D0); // Push result; top -> [result]
      Code.PushObject(Code.CloneObject(
        isLeftDecimal ? left : right // Push the object to the stack
      ));
      return null;
    }

    if (operation == "*")
    {
      Code.Mul(Register.X0, Register.X1, Register.X0); // X0 = X0 * X1
    }
    else if (operation == "/")
    {
      Code.Div(Register.X0, Register.X1, Register.X0); // X0 = X0 / X1
    }

    Code.Comment("Pushing result");
    Code.Push(Register.X0); // Push result; top -> [result]
    Code.PushObject(Code.CloneObject(left));

    return null;
  }

  public override Object? VisitAddSub(LanguageParser.AddSubContext context)
  {

    Code.Comment("Add/Sub operation");
    var operation = context.op.Text;

    // 1 + 2
    // top -> []
    Code.Comment("Visiting left operand");
    Visit(context.expr(0)); // Visit 2; top -> [2, 1]
    Code.Comment("Visiting right operand");
    Visit(context.expr(1)); // Visit 1; top -> [1]

    Code.Comment("Popping operands");
    var isRightDecimal = Code.TopObject().Type == StackObject.StackObjectType.Float;
    var right = Code.PopObject(isRightDecimal ? Register.D0 : Register.X0); // Pop 2; top -> [1]
    var isLeftDecimal = Code.TopObject().Type == StackObject.StackObjectType.Float;
    var left = Code.PopObject(isLeftDecimal ? Register.D1 : Register.X1); // Pop 1; top -> []

    if (isLeftDecimal || isRightDecimal)
    {
      if (!isLeftDecimal) Code.Scvtf(Register.D1, Register.X1); // Convert left to float
      if (!isRightDecimal) Code.Scvtf(Register.D0, Register.X0); // Convert right to float

      if (operation == "+")
      {
        Code.Fadd(Register.D0, Register.D0, Register.D1); // D0 = D0 + D1
      }
      else if (operation == "-")
      {
        Code.Fsub(Register.D0, Register.D1, Register.D0); // D0 = D1 - D0
      }

      Code.Comment("Pushing result");
      Code.Push(Register.D0); // Push result; top -> [result]
      Code.PushObject(Code.CloneObject(
        isLeftDecimal ? left : right // Push the object to the stack
      ));
      return null;
    }

    if (operation == "+")
    {
      if (left.Type == StackObject.StackObjectType.String &&
          right.Type == StackObject.StackObjectType.String)
      {
        // Concatenación de strings
        Code.Comment("String concatenation");
        api.compiler.arm.Builtins.ConcatString(Code, Register.X1, Register.X0);

        Code.PushObject(Code.StringObject());
        return null;
      }
      else
      {
        // Suma normal
        Code.Add(Register.X0, Register.X0, Register.X1); // X0 = X0 + X1
      }
    }
    else if (operation == "-")
    {
      Code.Sub(Register.X0, Register.X1, Register.X0); // X0 = X0 - X1
    }

    Code.Comment("Pushing result");
    Code.Push(Register.X0); // Push result; top -> [result]
    Code.PushObject(Code.CloneObject(left));

    return null;
  }

  public override Object? VisitMod(LanguageParser.ModContext context)
  {
    Code.Comment("Mod operation");
    Visit(context.expr(0));
    Visit(context.expr(1));

    Code.PopObject(Register.X1); // Segundo operando
    Code.PopObject(Register.X0); // Primer operando

    // Calcular módulo
    Code.Div(Register.X2, Register.X0, Register.X1);
    Code.Mul(Register.X2, Register.X2, Register.X1);
    Code.Sub(Register.X0, Register.X0, Register.X2);

    // Guardar resultado y limpiar temporales
    Code.Push(Register.X0);
    Code.PushObject(Code.IntObject());

    return null;
  }

  public override Object? VisitAddAssign(LanguageParser.AddAssignContext context)
  {
    return null;
  }

  public override Object? VisitSubAssign(LanguageParser.SubAssignContext context)
  {
    return null;
  }

  public override Object? VisitRelational(LanguageParser.RelationalContext context)
  {
    Code.Comment("Relational operation");
    var operation = context.op.Text;
    Visit(context.expr(0)); // Visit left operand; top -> [left]
    Visit(context.expr(1)); // Visit right operand; top -> [right, left]

    Code.Comment("Popping operands");
    var isRightDecimal = Code.TopObject().Type == StackObject.StackObjectType.Float;
    var right = Code.PopObject(isRightDecimal ? Register.D0 : Register.X0); // Pop right operand; top -> [left]
    var isLeftDecimal = Code.TopObject().Type == StackObject.StackObjectType.Float;
    var left = Code.PopObject(isLeftDecimal ? Register.D1 : Register.X1); // Pop left operand; top -> []

    if (isLeftDecimal || isRightDecimal)
    {
      Code.Comment("Comparing decimal values");
      if (!isLeftDecimal) Code.Scvtf(Register.D1, Register.X1); // Convert left to float
      if (!isRightDecimal) Code.Scvtf(Register.D0, Register.X0); // Convert right to float

      Code.Fcmp(Register.D1, Register.D0); // Compare left and right operands
      var relationalTrueLabel = Code.GetLabel();
      var relationalEndLabel = Code.GetLabel();

      /*
        fcmp d0, d1
        [beq] [bne] [blt] [bgt] [ble] [bge] -> trueLabel
        push 0
        b end
        trueLabel:
        push 1
        end:
      */

      switch (operation)
      {
        case "<":
          Code.Blt(relationalTrueLabel);
          break;
        case "<=":
          Code.Ble(relationalTrueLabel);
          break;
        case ">":
          Code.Bgt(relationalTrueLabel);
          break;
        case ">=":
          Code.Bge(relationalTrueLabel);
          break;
        case "==":
          Code.Beq(relationalTrueLabel);
          break;
        case "!=":
          Code.Bne(relationalTrueLabel);
          break;
        default:
          throw new Exception($"Operador relacional no soportado: {operation}");
      }

      Code.Mov(Register.X0, 0); // Push falso
      Code.Push(Register.X0); // Push result; top -> [result]
      Code.B(relationalEndLabel); // Jump to end
      Code.SetLabel(relationalTrueLabel); // Set true label
      Code.Mov(Register.X0, 1); // Push verdadero
      Code.Push(Register.X0); // Push result; top -> [result]
      Code.SetLabel(relationalEndLabel); // Set end label

      Code.PushObject(Code.BoolObject()); // Push the boolean object

      return null;
    }

    if (right.Type == StackObject.StackObjectType.String &&
    left.Type == StackObject.StackObjectType.String)
    {
      Code.Comment("String comparison");
      var StringTrueLabel = Code.GetLabel();
      var StrinEndLabel = Code.GetLabel();

      // Llamar a la función de comparación
      Code.stdLib.Use("compare_strings");
      Code.instructions.Add("BL compare_strings");

      // x0 contiene 0 si son iguales, 1 si son diferentes
      if (operation == "==")
      {
        Code.Cbz(Register.X0, StringTrueLabel);  // Si x0 es 0 (iguales), saltar a true
      }
      else if (operation == "!=")
      {
        Code.Cbnz(Register.X0, StringTrueLabel); // Si x0 no es 0 (diferentes), saltar a true
      }

      // Resultado falso
      Code.Mov(Register.X0, 0);
      Code.Push(Register.X0);
      Code.B(StrinEndLabel);

      // Resultado verdadero
      Code.SetLabel(StringTrueLabel);
      Code.Mov(Register.X0, 1);
      Code.Push(Register.X0);

      Code.SetLabel(StrinEndLabel);
      Code.PushObject(Code.BoolObject());
      return null;
    }

    Code.Cmp(Register.X1, Register.X0); // Compare left and right operands
    var trueLabel = Code.GetLabel();
    var endLabel = Code.GetLabel();

    /* 
      cmp x1, x0
      [beq] [bne] [blt] [bgt] [ble] [bge] -> trueLabel
      push 0
      b end
      trueLabel:
      push 1
      end:
    */

    switch (operation)
    {
      case "<":
        Code.Blt(trueLabel);
        break;
      case "<=":
        Code.Ble(trueLabel);
        break;
      case ">":
        Code.Bgt(trueLabel);
        break;
      case ">=":
        Code.Bge(trueLabel);
        break;
      case "==":
        Code.Beq(trueLabel);
        break;
      case "!=":
        Code.Bne(trueLabel);
        break;
      default:
        throw new Exception($"Operador relacional no soportado: {operation}");
    }

    Code.Mov(Register.X0, 0); // Push falso
    Code.Push(Register.X0); // Push result; top -> [result]
    Code.B(endLabel); // Jump to end
    Code.SetLabel(trueLabel); // Set true label
    Code.Mov(Register.X0, 1); // Push verdadero
    Code.Push(Register.X0); // Push result; top -> [result]
    Code.SetLabel(endLabel); // Set end label

    Code.PushObject(Code.BoolObject()); // Push the boolean object


    return null;
  }



  public override Object? VisitLogical(LanguageParser.LogicalContext context)
  {
    Code.Comment("Logical operation: " + context.op.Text);
    var operation = context.op.Text;

    if (operation == "&&")
    {
      // Evaluar operando izquierdo
      Code.Comment("Starting AND operation");
      string FalseLabel = Code.GetLabel();
      string EndLabel = Code.GetLabel();

      Visit(context.expr(0)); // Visit left operand; top -> [left]
      var left = Code.PopObject(Register.X0); // Pop left operand; top -> []

      Code.Cmp(Register.X0, 0); // Compare left operand with 0
      Code.Comment($"Saltar a etiqueta {FalseLabel} si exp(0) es falso ");
      Code.Beq(FalseLabel); // If left operand is false, jump to FalseLabel

      Visit(context.expr(1)); // Visit right operand; top -> [right]
      var right = Code.PopObject(Register.X0); // Pop right operand; top -> []

      Code.Cmp(Register.X0, 0); // Compare right operand with 0
      Code.Beq(FalseLabel); // If right operand is false, jump to FalseLabel

      Code.Mov(Register.X0, 1); // Si llegamos aquí, ambos son verdaderos
      Code.B(EndLabel);

      Code.Comment($"Saltar a etiquetra {FalseLabel} si exp(0) es falso");
      Code.SetLabel(FalseLabel); // Set FalseLabel
      Code.Mov(Register.X0, 0); // Push false

      Code.Comment($"Saltar a etiqueta {EndLabel} ");
      Code.SetLabel(EndLabel); // Set EndLabel
      Code.Push(Register.X0); // Push result; top -> [result]
      Code.PushObject(Code.BoolObject()); // Push the boolean object
    }
    else if (operation == "||")
    {
      // Similar implementación para OR
      string TrueLabel = Code.GetLabel();
      string EndLabel = Code.GetLabel();

      Visit(context.expr(0));
      var left = Code.PopObject(Register.X0);

      Code.Cmp(Register.X0, 0);
      Code.Comment($"Saltar a etiqueta {TrueLabel} si exp(0) es verdadero");
      Code.Bne(TrueLabel);

      Visit(context.expr(1));
      var right = Code.PopObject(Register.X0);

      Code.Cmp(Register.X0, 0);
      Code.Bne(TrueLabel);

      Code.Mov(Register.X0, 0); // Si llegamos aquí, ambos son falsos
      Code.B(EndLabel);

      Code.SetLabel(TrueLabel);
      Code.Mov(Register.X0, 1);

      Code.SetLabel(EndLabel);
      Code.Push(Register.X0);
      Code.PushObject(Code.BoolObject());
    }

    return null;
  }

  public override Object? VisitNot(LanguageParser.NotContext context)
  {
    Code.Comment("Logical NOT operation");

    // Evaluar la expresión
    Visit(context.expr());
    var expr = Code.PopObject(Register.X0);

    // Invertir el valor usando XOR con 1
    Code.instructions.Add($"EOR {Register.X0}, {Register.X0}, #1");
    Code.Push(Register.X0);

    // Mantener el tipo booleano
    Code.PushObject(Code.BoolObject());

    return null;
  }

  public override Object? VisitIfStmt(LanguageParser.IfStmtContext context)
  {

    Code.Comment("If statement");
    Visit(context.expr()); // Visit condition; top -> [condition]
    Code.PopObject(Register.X0); // Pop condition; top -> []

    /* 
    
    HAY 2 CASOS:

    1. Es solamente un if
    if (condition) goto endLabel
      ... body 
    endLabel:

    2. Es un if-else
    if (condition) goto elseLabel
      ... body 
      goto endLabel
    elseLabel:
      ... else body
    endLabel:

    */

    var TieneElse = context.stmt().Length > 1;

    if (TieneElse)
    {
      Code.Comment("If-else statement");
      var elseLabel = Code.GetLabel();
      var endLabel = Code.GetLabel();

      Code.Cbz(Register.X0, elseLabel); // If condition is false, jump to else label
      Visit(context.stmt(0)); // Visit if body; top -> [] 
      Code.B(endLabel); // Jump to end label
      Code.SetLabel(elseLabel); // Set else label
      Visit(context.stmt(1)); // Visit else body; top -> []
      Code.SetLabel(endLabel); // Set end label

    }
    else
    {
      Code.Comment("If statement");
      var endLabel = Code.GetLabel();
      Code.Cbz(Register.X0, endLabel); // If condition is false, jump to end label
      Visit(context.stmt(0)); // Visit if body; top -> []
      Code.SetLabel(endLabel); // Set end label
    }

    return null;
  }

  public override Object? VisitSwitchStmt(LanguageParser.SwitchStmtContext context)
  {
    Code.Comment("Switch statement");

    // Evaluar la expresión del switch
    Visit(context.expr(0));
    var switchValue = Code.PopObject(Register.X1);
    Code.Push(Register.X1); // Solo una vez (valor físico)
    Code.PushObject(Code.CloneObject(switchValue)); // Solo una vez (objeto lógico)

    var endLabel = Code.GetLabel();
    var previousBreakLabel = BreakLabel;
    BreakLabel = endLabel;

    var nextCaseLabel = Code.GetLabel();
    var defaultLabel = Code.GetLabel();
    bool hasDefault = false;

    // Primera pasada: buscar si hay default y contar casos
    int totalCases = 0;
    for (int i = 0; i < context.children.Count; i++)
    {
      if (context.children[i].GetText() == "case")
        totalCases++;
      else if (context.children[i].GetText() == "default")
        hasDefault = true;
    }

    // Segunda pasada: generar código para cada caso
    int currentCase = 0;
    for (int i = 0; i < context.children.Count; i++)
    {
      if (context.children[i].GetText() == "case")
      {
        Code.SetLabel(nextCaseLabel);
        nextCaseLabel = Code.GetLabel();

        // Evaluar la expresión del caso
        Visit(context.expr(currentCase + 1));
        var caseType = Code.TopObject().Type;
        Code.PopObject(Register.X0);  // Valor del caso en X0

        // Recuperar valor del switch para comparación (sin pop/push extra)
        Code.Mov(Register.X1, Register.SP); // SP apunta al valor del switch
        Code.Ldr(Register.X1, Register.X1); // Cargar valor del switch en X1

        // Comparar según el tipo
        var nextLabel = (currentCase < totalCases - 1) ? nextCaseLabel :
                        hasDefault ? defaultLabel : endLabel;
        if (switchValue.Type == StackObject.StackObjectType.String &&
            caseType == StackObject.StackObjectType.String)
        {
          Code.stdLib.Use("compare_strings");
          Code.instructions.Add("BL compare_strings");
          Code.Cbnz(Register.X0, nextLabel);
        }
        else
        {
          Code.Cmp(Register.X1, Register.X0);
          Code.Bne(nextLabel);
        }

        // Ejecutar el bloque de código
        i++;
        while (i < context.children.Count &&
               context.children[i].GetText() != "case" &&
               context.children[i].GetText() != "default")
        {
          Visit(context.children[i]);
          i++;
        }

        var tempBytesCase = Code.CleanTemporaries();
        if (tempBytesCase > 0)
        {
          Code.Comment($"Cleaning case temporaries: {tempBytesCase} bytes");
        }

        Code.B(endLabel);  // Break implícito
        i--;
        currentCase++;
      }
      else if (context.children[i].GetText() == "default")
      {
        Code.SetLabel(defaultLabel);
        i++;
        while (i < context.children.Count &&
               context.children[i].GetText() != "case")
        {
          Visit(context.children[i]);
          i++;
        }

        // --- Limpiar temporales ANTES del break ---
        var tempBytesDefault = Code.CleanTemporaries();
        if (tempBytesDefault > 0)
        {
          Code.Comment($"Cleaning default temporaries: {tempBytesDefault} bytes");
        }

        i--;
        Code.B(endLabel);  // Break implícito
      }
    }

    // Si no hubo coincidencia y no hay default, saltar al final
    if (!hasDefault)
    {
      Code.SetLabel(nextCaseLabel);
      Code.B(endLabel);
    }

    Code.SetLabel(endLabel);

    // Limpiar el valor del switch y su objeto de la pila (solo un pop físico y lógico)
    Code.PopObject(Register.X0);
    Code.Pop(Register.X0);

    BreakLabel = previousBreakLabel;
    return null;
  }

  public override Object? VisitIncdec(LanguageParser.IncdecContext context)
  {
    string varName = context.ID().GetText();
    string operation = context.op.Text; // ++ o --

    Code.Comment($"{operation} operation on variable: {varName}");

    // Obtener el offset y el objeto de la variable
    var (offset, varObject) = Code.GetObject(varName);

    // Cargar el valor actual de la variable
    Code.Comment("Cargando valor de la variable");
    Code.Mov(Register.X1, offset);
    Code.Add(Register.X1, Register.SP, Register.X1); // X1 ahora contiene la dirección de la variable
    Code.Ldr(Register.X0, Register.X1); // X0 ahora contiene el valor de la variable

    if (varObject.Type == StackObject.StackObjectType.Int ||
        varObject.Type == StackObject.StackObjectType.Bool)
    {
      // Para enteros y booleanos
      Code.Comment($"Performing {operation} operation on integer/boolean");

      if (operation == "++")
      {
        Code.Add(Register.X0, Register.X0, 1); // X0 = X0 + 1
      }
      else // operation == "--"
      {
        Code.Sub(Register.X0, Register.X0, 1); // X0 = X0 - 1
      }

      // Guardar el nuevo valor de vuelta en la variable
      Code.Str(Register.X0, Register.X1);

      // Poner el nuevo valor en la pila para posible uso posterior
      Code.Push(Register.X0);
      Code.PushObject(Code.CloneObject(varObject));
    }
    else if (varObject.Type == StackObject.StackObjectType.Float)
    {
      // Para decimales
      Code.Comment($"Performing {operation} operation on float");

      // Convertir el valor a float si no lo es ya
      Code.Scvtf(Register.D0, Register.X0);

      // Crear el valor 1.0 en D1
      Code.Mov(Register.X0, 1);
      Code.Scvtf(Register.D1, Register.X0);

      if (operation == "++")
      {
        Code.Fadd(Register.D0, Register.D0, Register.D1); // D0 = D0 + 1.0
      }
      else // operation == "--"
      {
        Code.Fsub(Register.D0, Register.D0, Register.D1); // D0 = D0 - 1.0
      }

      // Convertir de vuelta a entero si es necesario
      Code.Fcvtzs(Register.X0, Register.D0);

      // Guardar el nuevo valor de vuelta en la variable
      Code.Str(Register.X0, Register.X1);

      // Poner el nuevo valor en la pila para posible uso posterior
      Code.Push(Register.D0);
      Code.PushObject(Code.CloneObject(varObject));
    }
    else
    {
      // Tipo no soportado para incremento/decremento
      throw new Exception($"Operador {operation} no soportado para el tipo {varObject.Type}");
    }

    return null;
  }

  public override Object? VisitForWhileStmt(LanguageParser.ForWhileStmtContext context)
  {

    /* 
      startLabel:
        ...condition
        if (!condition) goto endLabel
        ...body
        goto startLabel
      endLabel:
    */

    Code.Comment("For-While statement");
    var startLabel = Code.GetLabel();
    var endLabel = Code.GetLabel();

    var prevContinueLabel = ContinueLabel;
    var prevBreakLabel = BreakLabel;
    ContinueLabel = startLabel; // Set continue label
    BreakLabel = endLabel; // Set break label

    Code.SetLabel(startLabel); // Set start label
    Visit(context.expr()); // Visit condition; top -> [condition]
    Code.PopObject(Register.X0); // Pop condition; top -> []
    Code.Cbz(Register.X0, endLabel); // If condition is false, jump to end label
    Visit(context.stmt()); // Visit body; top -> []
    Code.B(startLabel); // Jump to start label
    Code.SetLabel(endLabel); // Set end label
    Code.Comment("End of For-While statement");

    ContinueLabel = prevContinueLabel; // Restore previous continue label
    BreakLabel = prevBreakLabel; // Restore previous break label


    return null;
  }

  public override Object? VisitForClassicStmt(LanguageParser.ForClassicStmtContext context)
  {
    var startLabel = Code.GetLabel();
    var endLabel = Code.GetLabel();
    var incrementLabel = Code.GetLabel();

    var prevContinueLabel = ContinueLabel;
    var prevBreakLabel = BreakLabel;

    ContinueLabel = incrementLabel;
    BreakLabel = endLabel;

    Code.Comment("For-Classic statement");
    Code.NewScope(); // Nuevo ámbito para las variables declaradas en el for

    // Inicialización 
    Visit(context.forInit());

    // Etiqueta de inicio
    Code.SetLabel(startLabel);

    // Condición
    Visit(context.expr(0));
    var conditionObj = Code.TopObject();
    Code.PopObject(Register.X0);
    Code.Cbz(Register.X0, endLabel);

    // Cuerpo del for
    Visit(context.stmt());

    // Incremento
    Code.SetLabel(incrementLabel);
    Visit(context.expr(1));

    if (Code.TopObject() != null)
    {
      Code.PopObject(Register.X0);
      // No necesitamos hacer Push de este valor de vuelta
    }

    Code.B(startLabel);

    Code.SetLabel(endLabel);

    var bytesToRemove = Code.EndScope();
    if (bytesToRemove > 0)
    {
      Code.Comment($"Removing {bytesToRemove} bytes from stack");
      Code.Add(Register.SP, Register.SP, bytesToRemove);
    }

    ContinueLabel = prevContinueLabel;
    BreakLabel = prevBreakLabel;

    return null;
  }

  public override Object? VisitForRangeStmt(LanguageParser.ForRangeStmtContext context)
  {
    return null;
  }

  public override Object? VisitSlice1Stmt(LanguageParser.Slice1StmtContext context)
  {
    string id = context.ID().GetText();
    Code.Comment($"Declaración del Slice: {id}");

    // 1. Guardar dirección inicial del heap en el stack
    Code.Push(Register.HP);

    // 2. Guardar tamaño del slice
    int size = context.exprList().expr().Length;
    Code.Mov(Register.X0, size);
    Code.Str(Register.X0, Register.HP);  // Guardar tamaño como word completo
    Code.Add(Register.HP, Register.HP, 8);

    // 3. Guardar cada valor
    foreach (var expr in context.exprList().expr())
    {
      Visit(expr);
      Code.PopObject(Register.X0);
      Code.Str(Register.X0, Register.HP);  // Guardar valor como word completo
      Code.Add(Register.HP, Register.HP, 8);
    }

    // 4. Crear objeto y etiquetarlo
    Code.PushObject(new StackObject
    {
      Type = StackObject.StackObjectType.Slice,
      Length = 8,
      Depth = Code.depth,
      Id = null
    });
    Code.TagObject(id);

    return null;
  }

  public override Object? VisitSlice3Stmt(LanguageParser.Slice3StmtContext context)
  {
    string id = context.ID().GetText();
    Code.Comment($"Asignación a slice {id}[index]");

    // 1. Obtener dirección base del slice desde el stack
    var (offset, obj) = Code.GetObject(id);
    Code.Mov(Register.X2, offset);
    Code.Add(Register.X2, Register.SP, Register.X2);
    Code.Ldr(Register.X2, Register.X2);  // X2 = dirección base en heap

    // 2. Obtener índice
    Visit(context.expr(0));
    Code.PopObject(Register.X1);  // X1 = índice

    // 3. Obtener el valor a asignar 
    Visit(context.expr(1));
    Code.PopObject(Register.X0);  // X0 = nuevo valor

    // 4. Calcular dirección del elemento
    Code.Mov(Register.X3, 8);  // Cada elemento ocupa 8 bytes
    Code.Mul(Register.X3, Register.X1, Register.X3);  // X3 = índice * 8
    Code.Add(Register.X3, Register.X3, 8);  // Saltar el tamaño
    Code.Add(Register.X2, Register.X2, Register.X3);  // Dirección final

    // 5. Guardar el nuevo valor
    Code.Comment($"Guardando valor {Register.X0} en posición {Register.X2}");
    Code.instructions.Add($"STR {Register.X0}, [{Register.X2}]");

    // 6. Guardar el valor en la pila para uso posterior
    Code.Push(Register.X0);
    Code.PushObject(new StackObject
    {
      Type = StackObject.StackObjectType.Int,
      Length = 8,
      Depth = Code.depth,
      Id = null
    });

    return null;
  }

  public override Object? VisitSlice6Stmt(LanguageParser.Slice6StmtContext context)
  {
    string id = context.ID().GetText();
    Code.Comment($"Acceso a slice {id}[index]");

    // 1. Obtener dirección base del slice desde el stack
    var (offset, obj) = Code.GetObject(id);
    Code.Mov(Register.X2, offset);
    Code.Add(Register.X2, Register.SP, Register.X2);
    Code.Ldr(Register.X2, Register.X2);  // X2 = dirección base en heap

    // 2. Obtener índice
    Visit(context.expr());
    Code.PopObject(Register.X1);  // X1 = índice

    // 3. Calcular dirección del elemento
    Code.Mov(Register.X3, 8);  // Cada elemento ocupa 8 bytes
    Code.Mul(Register.X3, Register.X1, Register.X3);  // X3 = índice * 8
    Code.Add(Register.X3, Register.X3, 8);  // Saltar el tamaño
    Code.Add(Register.X2, Register.X2, Register.X3);  // Dirección final

    // 4. Leer valor
    Code.Ldr(Register.X0, Register.X2);

    // 5. Poner valor en la pila
    Code.Push(Register.X0);
    Code.PushObject(new StackObject
    {
      Type = StackObject.StackObjectType.Int,
      Length = 8,
      Depth = Code.depth,
      Id = null
    });

    return null;
  }

  public override Object? VisitSlice4Stmt(LanguageParser.Slice4StmtContext context)
  {
    return null;
  }

  public override Object? VisitSlice5Stmt(LanguageParser.Slice5StmtContext context)
  {
    return null;
  }

  public override Object? VisitSlice7Stmt(LanguageParser.Slice7StmtContext context)
  {
    return null;
  }

  public override Object? VisitBreakStmt(LanguageParser.BreakStmtContext context)
  {
    Code.Comment("Break statement");
    if (BreakLabel != null)
    {
      // Limpiar cualquier valor temporal en la pila antes de saltar
      Code.Comment("Cleaning up temporary values from stack before break");

      // Obtener todos los valores temporales acumulados desde la última instrucción
      var tempValues = Code.GetTemporaryValues();
      if (tempValues > 0)
      {
        Code.Comment($"Removing {tempValues} bytes from stack");
        Code.Add(Register.SP, Register.SP, tempValues);
      }

      // Ahora sí, saltar a la etiqueta break
      Code.B(BreakLabel);
    }
    return null;
  }

  public override Object? VisitContinueStmt(LanguageParser.ContinueStmtContext context)
  {
    Code.Comment("Continue statement");
    if (ContinueLabel != null)
    {
      // Limpiar cualquier valor temporal en la pila antes de saltar
      Code.Comment("Cleaning up temporary values from stack before continue");

      // Obtener todos los valores temporales acumulados desde la última instrucción
      var tempValues = Code.GetTemporaryValues();
      if (tempValues > 0)
      {
        Code.Comment($"Removing {tempValues} bytes from stack");
        Code.Add(Register.SP, Register.SP, tempValues);
      }

      // Ahora sí, saltar a la etiqueta continue
      Code.B(ContinueLabel);
    }
    return null;
  }

  public override Object? VisitReturnStmt(LanguageParser.ReturnStmtContext context)
  {

    Code.Comment("Return statement");
    if (context.expr() == null)
    {
      Code.B(ReturnLabel);
      return null;
    }

    if (insideFunction == null) throw new Exception("No se puede usar return fuera de una función");

    Visit(context.expr()); // Visit return expression; top -> [returnValue]
    Code.PopObject(Register.X0); // Pop return value; top -> []

    var frameSize = Functions[insideFunction].FrameSize;
    var returnOffset = frameSize - 1;
    Code.Mov(Register.X1, returnOffset * 8);
    Code.Sub(Register.X1, Register.FP, Register.X1); // X1 apunta a la posición de retorno
    Code.Str(Register.X0, Register.X1); // Guardar el valor de retorno en la posición de retorno
    Code.B(ReturnLabel); // Jump to return label
    Code.Comment("End of return statement");

    return null;
  }

  public override Object? VisitCallExpr(LanguageParser.CallExprContext context)
  {
    if (context.expr() is not LanguageParser.IdentifierContext idContext) return null;

    string funcName = idContext.ID().GetText();
    var call = context.call()[0];

    if (call is not LanguageParser.FuncCallContext callContext) return null;

    var postFuncCallLabel = Code.GetLabel();

    // 1. Preparar espacio para RA y FP
    int baseOffset = 2;
    int stackElementSize = 8;
    Code.Mov(Register.X0, baseOffset * stackElementSize);
    Code.Sub(Register.SP, Register.SP, Register.X0);

    // 2. Manejar parámetros (si los hay)
    int paramCount = 0;
    if (callContext.exprList() != null)
    {
      Code.Comment("Visiting function parameters");
      foreach (var expr in callContext.exprList().expr())
      {
        Visit(expr);
        paramCount++;
      }
    }

    // 3. Ajustar SP y FP
    Code.Mov(Register.X0, stackElementSize * (baseOffset + paramCount));
    Code.Add(Register.SP, Register.SP, Register.X0);

    Code.Mov(Register.X0, stackElementSize);
    Code.Sub(Register.X0, Register.SP, Register.X0);

    // 4. Guardar dirección de retorno y FP actual
    Code.Adr(Register.X1, postFuncCallLabel);
    Code.Push(Register.X1);
    Code.Push(Register.FP);
    Code.Add(Register.FP, Register.X0, Register.XZR);

    // 5. Ajustar frame para la función
    int frameSize = Functions[funcName].FrameSize;
    Code.Mov(Register.X0, (frameSize - 2) * stackElementSize);
    Code.Sub(Register.SP, Register.SP, Register.X0);

    // 6. Llamar a la función
    Code.Comment("Calling function: " + funcName);
    Code.Bl(funcName);
    Code.SetLabel(postFuncCallLabel);

    // 7. Restaurar el estado
    if (Functions[funcName].ReturnType != StackObject.StackObjectType.Void)
    {
      var ReturnOffset = frameSize - 1;
      Code.Mov(Register.X4, ReturnOffset * stackElementSize);
      Code.Sub(Register.X4, Register.FP, Register.X4);
      Code.Ldr(Register.X4, Register.X4);
    }

    Code.Mov(Register.X1, stackElementSize);
    Code.Sub(Register.X1, Register.FP, Register.X1);
    Code.Ldr(Register.FP, Register.X1);

    Code.Mov(Register.X0, stackElementSize * frameSize);
    Code.Add(Register.SP, Register.SP, Register.X0);

    if (Functions[funcName].ReturnType != StackObject.StackObjectType.Void)
    {
      Code.Push(Register.X4);
      Code.PushObject(new StackObject
      {
        Type = Functions[funcName].ReturnType,
        Id = null,
        Offset = 0,
        Length = 8
      });
    }

    Code.Comment("End of Function call: " + funcName);
    return null;
  }

  public override Object? VisitAtoiCall(LanguageParser.AtoiCallContext context)
  {
    return null;
  }

  public override Object? VisitParseFloatCall(LanguageParser.ParseFloatCallContext context)
  {
    return null;
  }

  public override Object? VisitTypeOfCall(LanguageParser.TypeOfCallContext context)
  {
    return null;
  }

  public override Object? VisitIndexCall(LanguageParser.IndexCallContext context)
  {
    Code.Comment("slices.Index function");

    // 1. Obtener los parámetros (slice y valor a buscar)
    var parameters = context.callEmbebida().exprList().expr();

    // Primer parámetro: el slice
    Visit(parameters[0]);
    var sliceObj = Code.PopObject(Register.X19);  // X19 = dirección base del slice

    // Segundo parámetro: valor a buscar
    Visit(parameters[1]);
    var searchValue = Code.PopObject(Register.X0);  // X0 = valor a buscar

    // 2. Leer tamaño del slice
    Code.Ldr(Register.X20, Register.X19);  // X20 = tamaño del slice
    Code.Add(Register.X19, Register.X19, 8);  // Saltar el tamaño

    // 3. Preparar variables para el ciclo
    Code.Mov(Register.X21, 0);  // X21 = contador/índice actual

    var loopLabel = Code.GetLabel();
    var notFoundLabel = Code.GetLabel();
    var endLabel = Code.GetLabel();

    // 4. Ciclo de búsqueda
    Code.SetLabel(loopLabel);

    // Verificar si llegamos al final
    Code.Cmp(Register.X21, Register.X20);
    Code.Beq(notFoundLabel);  // Si contador == tamaño, no se encontró

    // Cargar elemento actual
    Code.Ldr(Register.X22, Register.X19);  // X22 = valor actual

    // Comparar con el valor buscado
    Code.Cmp(Register.X22, Register.X0);
    Code.Beq(endLabel);  // Si son iguales, encontramos el valor

    // Incrementar contador e índice
    Code.Add(Register.X21, Register.X21, 1);
    Code.Add(Register.X19, Register.X19, 8);
    Code.B(loopLabel);

    // 5. No se encontró el valor
    Code.SetLabel(notFoundLabel);
    Code.Mov(Register.X21, -1);  // Retornar -1

    // 6. Final
    Code.SetLabel(endLabel);
    Code.Push(Register.X21);  // Push del resultado (índice o -1)

    // 7. Push del objeto resultado (tipo int)
    Code.PushObject(new StackObject
    {
      Type = StackObject.StackObjectType.Int,
      Length = 8,
      Depth = Code.depth,
      Id = null
    });

    return null;
  }

  public override Object? VisitJoinCall(LanguageParser.JoinCallContext context)
  {
    Code.Comment("strings.Join function");

    // 1. Obtener parámetros (slice y separador)
    var parameters = context.callEmbebida().exprList().expr();

    // Primero visitar cada parámetro
    Visit(parameters[0]); // slice
    Visit(parameters[1]); // separador

    // Guardar registro X10 (HP) porque será modificado por copy_string
    Code.instructions.Add("STR X10, [SP, #-8]!");

    // Obtener dirección del slice y separador
    var sliceAddr = Code.PopObject(Register.X19);
    var sepAddr = Code.PopObject(Register.X20);

    // 2. Leer tamaño del slice
    Code.Ldr(Register.X21, Register.X19); // X21 = tamaño
    Code.Add(Register.X19, Register.X19, 8); // X19 ahora apunta al primer elemento

    // 3. Guardar posición inicial en el heap para el resultado
    Code.Push(Register.HP);

    // 4. Iterar sobre elementos
    Code.Mov(Register.X22, 0); // Contador
    var loopLabel = Code.GetLabel();
    var endLabel = Code.GetLabel();

    Code.SetLabel(loopLabel);
    Code.Cmp(Register.X22, Register.X21);
    Code.Beq(endLabel);

    // Si no es el primer elemento, agregar separador
    Code.Cmp(Register.X22, 0);
    var skipSepLabel = Code.GetLabel();
    Code.Beq(skipSepLabel);

    // Copiar separador
    Code.Mov(Register.X0, Register.X20);
    Code.stdLib.Use("copy_string");
    Code.instructions.Add("BL copy_string");

    Code.SetLabel(skipSepLabel);

    // Copiar string actual
    Code.Ldr(Register.X0, Register.X19);
    Code.stdLib.Use("copy_string");
    Code.instructions.Add("BL copy_string");

    // Avanzar al siguiente elemento
    Code.Add(Register.X19, Register.X19, 8);
    Code.Add(Register.X22, Register.X22, 1);
    Code.B(loopLabel);

    Code.SetLabel(endLabel);

    // Agregar terminador nulo
    Code.Mov("w0", 0);
    Code.Strb("w0", Register.HP);
    Code.Add(Register.HP, Register.HP, 1);

    // Restaurar registro X10 (HP)
    Code.instructions.Add("LDR X10, [SP], #8");

    // Retornar string resultante
    Code.PushObject(new StackObject
    {
      Type = StackObject.StackObjectType.String,
      Length = 8,
      Depth = Code.depth,
      Id = null
    });

    return null;
  }

  public override Object? VisitLenCall(LanguageParser.LenCallContext context)
  {
    Code.Comment("len function");

    // 1. Obtener el slice
    var parameters = context.callEmbebida().exprList().expr();
    Visit(parameters[0]);

    // Obtener la dirección base del slice
    Code.PopObject(Register.X19);  // X19 = dirección del slice

    // El tamaño está en la primera posición del slice (primeros 8 bytes)
    Code.Comment("Loading slice size from first position");
    Code.Ldr(Register.X0, Register.X19);  // Cargar el tamaño

    // Guardar el resultado
    Code.Push(Register.X0);

    // Retornar un objeto de tipo entero
    Code.PushObject(new StackObject
    {
      Type = StackObject.StackObjectType.Int,
      Length = 8,
      Depth = Code.depth,
      Id = null
    });

    return null;
  }

  public override Object? VisitAppendCall(LanguageParser.AppendCallContext context)
  {
    Code.Comment("append function");

    // 1. Obtener parámetros
    var parameters = context.callEmbebida().exprList().expr();

    // Slice original
    Visit(parameters[0]);
    var sliceObj = Code.PopObject(Register.X19);  // X19 = dirección base slice original

    // Valor a agregar
    Visit(parameters[1]);
    var newValue = Code.PopObject(Register.X0);   // X0 = nuevo valor

    // 2. Leer tamaño actual del slice
    Code.Ldr(Register.X20, Register.X19);         // X20 = tamaño actual

    // 3. Crear nuevo slice con tamaño + 1
    Code.Push(Register.HP);                       // Guardar dirección inicial del nuevo slice

    // Guardar nuevo tamaño
    Code.Add(Register.X20, Register.X20, 1);      // Incrementar tamaño
    Code.Str(Register.X20, Register.HP);          // Guardar nuevo tamaño
    Code.Add(Register.HP, Register.HP, 8);        // Avanzar heap

    // 4. Copiar elementos existentes
    Code.Add(Register.X19, Register.X19, 8);      // Saltar tamaño en slice original
    Code.Mov(Register.X21, 0);                    // X21 = contador

    var loopLabel = Code.GetLabel();
    var endLabel = Code.GetLabel();

    Code.SetLabel(loopLabel);
    Code.Cmp(Register.X21, Register.X20);
    Code.Beq(endLabel);

    // Copiar elemento
    Code.Ldr(Register.X22, Register.X19);         // Cargar elemento
    Code.Str(Register.X22, Register.HP);          // Guardar en nuevo slice

    // Actualizar punteros y contador
    Code.Add(Register.X19, Register.X19, 8);
    Code.Add(Register.HP, Register.HP, 8);
    Code.Add(Register.X21, Register.X21, 1);
    Code.B(loopLabel);

    Code.SetLabel(endLabel);

    // 5. Agregar nuevo elemento
    Code.Str(Register.X0, Register.HP);           // Guardar nuevo valor
    Code.Add(Register.HP, Register.HP, 8);        // Actualizar heap

    // 6. Retornar nuevo slice
    Code.PushObject(new StackObject
    {
      Type = StackObject.StackObjectType.Slice,
      Length = 8,
      Depth = Code.depth,
      Id = null
    });

    return null;
  }

  public override Object? VisitFuncDCl(LanguageParser.FuncDClContext context)
  {

    /* 
      Frame will look like this:
      | RA | FP-1 | ...params | ...locals | return address |
    */

    int baseOffset = 2;
    int paramsOffset = 0;

    if (context.@params() != null)
    {
      paramsOffset = context.@params().param().Length;
    }

    FrameVisitor frameVisitor = new FrameVisitor(baseOffset + paramsOffset);

    foreach (var dcl in context.dcl())
    {
      frameVisitor.Visit(dcl);
    }

    var frame = frameVisitor.Frame;
    int localOffset = frame.Count;
    int returnOffset = 1;

    int totalFrameSize = baseOffset + paramsOffset + localOffset + returnOffset;

    string funcName = context.ID().GetText();
    StackObject.StackObjectType funcType = StackObject.StackObjectType.Void;
    if (context.type() != null)
    {
      funcType = GetType(context.type().GetText());
    }

    Functions.Add(funcName, new FunctionMetadata
    {
      FrameSize = totalFrameSize,
      ReturnType = funcType
    });

    var prevInstructions = Code.instructions;
    Code.instructions = new List<string>();

    var paramCounter = 0;
    if (context.@params() != null && context.@params().param().Count() > 0)
    {
      foreach (var param in context.@params().param())
      {
        Code.PushObject(new StackObject
        {
          Type = GetType(param.type().GetText()),
          Id = param.ID().GetText(),
          Offset = paramCounter + baseOffset,
          Length = 8
        });
        paramCounter++;
      }
    }

    foreach (FrameElement element in frame)
    {
      Code.PushObject(new StackObject
      {
        Type = StackObject.StackObjectType.Undefined,
        Id = element.Name,
        Offset = element.Offset,
        Length = 8
      });
    }

    insideFunction = funcName;
    framePointerOffset = 0;

    ReturnLabel = Code.GetLabel();

    Code.Comment("Declaracion de funcion: " + funcName);
    Code.SetLabel(funcName);

    foreach (var dcl in context.dcl())
    {
      Visit(dcl);
    }

    Code.SetLabel(ReturnLabel);

    Code.Add(Register.X0, Register.FP, Register.XZR); // Get in x0 the return address
    Code.Ldr(Register.LR, Register.X0); // Load the return address from the freame pointer
    Code.Br(Register.LR); // Return to the caller

    Code.Comment("End of Function " + funcName);

    // Limpiar el tope del stack
    for (int i = 0; i < paramsOffset + localOffset; i++)
    {
      Code.PopObject();
    }

    foreach (var instruccion in Code.instructions)
    {
      Code.funcInstructions.Add(instruccion);
    }
    Code.instructions = prevInstructions;
    insideFunction = null;

    return null;
  }

}