
using analyzer;
using Antlr4.Runtime.Misc;
using api.compiler;
using System.Text;
using SliceValue = api.compiler.SliceValue;



public class CompilerVisitor : LanguageBaseVisitor<Object?>
{

  public ArmGenerator Code = new ArmGenerator();
  private String? ContinueLabel = null;
  private String? BreakLabel = null;
  private String? ReturnLabel = null;

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
      }
    }
    else
    {
      // Si hay expresión, evaluarla normalmente
      Visit(context.expr());
    }

    Code.TagObject(varName);
    return null;
  }

  public override Object? VisitVarDcl2(LanguageParser.VarDcl2Context context)
  {

    var varName = context.ID().GetText();
    Code.Comment("Variable declaration: " + varName);

    Visit(context.expr());
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

      Code.Mov(Register.X1, offset);
      Code.Add(Register.X1, Register.SP, Register.X1);
      Code.Str(Register.X0, Register.X1);

      varObject.Type = valueObject.Type;

      Code.Push(Register.X0);
      Code.PushObject(Code.CloneObject(varObject));

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

    // Visitar cada expresión en la lista
    foreach (var expr in context.exprList().expr())
    {
        // Si no es el primer elemento, imprimir un espacio
        if (!isFirst)
        {
            Code.Comment("Print space between values");
            Code.Mov("w0", 32);
            Code.Push("x0");
            Code.PrintString(Register.SP);
            Code.Add(Register.SP, Register.SP, 8); // Restaurar el stack pointer después de imprimir el espacio
        }

        Code.Comment("Visiting expression");
        Visit(expr);

        Code.Comment("Popping value to print");
        var isDouble = Code.TopObject().Type == StackObject.StackObjectType.Float;
        var value = Code.PopObject(isDouble ? Register.D0 : Register.X0);

        // Imprimir según el tipo
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

        isFirst = false;
    }

    // Imprimir salto de línea al final
    Code.Comment("Print newline");
    Code.Mov("w0", 10);  // \n
    Code.Push("x0");
    Code.PrintString(Register.SP);
    Code.Add(Register.SP, Register.SP, 8); // Restaurar el stack pointer después de imprimir el salto de línea
    
    return null;
}

  public override Object? VisitIdentifier(LanguageParser.IdentifierContext context)
  {

    var id = context.ID().GetText();

    var (offset, obj) = Code.GetObject(id); // Get the variable object

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
      Code.Add(Register.SP, Register.SP, Register.X0); // Adjust stack pointer
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
      Code.Add(Register.X0, Register.X0, Register.X1); // X0 = X0 + X1
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

    // Visitar operandos y apilarlos
    Code.Comment("Visiting left operand");
    Visit(context.expr(0)); // Visit first operand; top -> [op1]
    Code.Comment("Visiting right operand");
    Visit(context.expr(1)); // Visit second operand; top -> [op2, op1]

    Code.Comment("Popping operands");
    Code.Pop(Register.X1); // Pop second operand; top -> [op1]
    Code.Pop(Register.X0); // Pop first operand; top -> []

    // Calcular el módulo usando: a % b = a - (a/b * b)
    Code.Comment("Calculate modulo");
    Code.Div(Register.X2, Register.X0, Register.X1); // X2 = X0 / X1 
    Code.Mul(Register.X2, Register.X2, Register.X1);  // X2 = X2 * X1
    Code.Sub(Register.X0, Register.X0, Register.X2);  // X0 = X0 - X2

    Code.Comment("Push result");
    Code.Push(Register.X0); // Push result; top -> [result]

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

    if(TieneElse)
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
    var switchValue = Code.PopObject(Register.X0);
    Code.Push(Register.X0);  // Guardar copia del valor del switch
    
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
        {
            totalCases++;
        }
        else if (context.children[i].GetText() == "default")
        {
            hasDefault = true;
        }
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
            var caseValue = Code.PopObject(Register.X1);
            
            // Recuperar valor del switch para comparación
            Code.Pop(Register.X0);
            Code.Push(Register.X0);
            
            // Comparar según el tipo
            if (switchValue.Type == StackObject.StackObjectType.String && 
                caseType == StackObject.StackObjectType.String)
            {
                // Comparación de strings
                Code.stdLib.Use("compare_strings");
                Code.instructions.Add("BL compare_strings");
                // Si son diferentes (x0 != 0), saltar al siguiente caso o al default/end
                var nextLabel = (currentCase < totalCases - 1) ? nextCaseLabel : 
                              hasDefault ? defaultLabel : endLabel;
                Code.Cbnz(Register.X0, nextLabel);
            }
            else
            {
                // Comparación numérica
                Code.Cmp(Register.X0, Register.X1);
                // Si son diferentes, saltar al siguiente caso o al default/end
                var nextLabel = (currentCase < totalCases - 1) ? nextCaseLabel : 
                              hasDefault ? defaultLabel : endLabel;
                Code.Bne(nextLabel);
            }
            
            // Si coincide, ejecutar el bloque de código
            i++;
            while (i < context.children.Count && 
                   context.children[i].GetText() != "case" && 
                   context.children[i].GetText() != "default")
            {
                Visit(context.children[i]);
                i++;
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
    Code.Pop(Register.X0);  // Limpiar el valor del switch de la pila
    BreakLabel = previousBreakLabel;
    
    return null;
}

  public override Object? VisitIncdec(LanguageParser.IncdecContext context)
  {
    return null;
  }

  public override Object? VisitForWhileStmt(LanguageParser.ForWhileStmtContext context)
  {
    return null;
  }

  public override Object? VisitForClassicStmt(LanguageParser.ForClassicStmtContext context)
  {
    return null;
  }

  public override Object? VisitForRangeStmt(LanguageParser.ForRangeStmtContext context)
  {
    return null;
  }

  public override Object? VisitSlice1Stmt(LanguageParser.Slice1StmtContext context)
  {
    return null;
  }

  public override Object? VisitSlice2Stmt(LanguageParser.Slice2StmtContext context)
  {
    return null;
  }

  public override Object? VisitSlice3Stmt(LanguageParser.Slice3StmtContext context)
  {
    return null;
  }

  public override Object? VisitSlice6Stmt(LanguageParser.Slice6StmtContext context)
  {
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
      Code.B(BreakLabel);
    }
    return null;
  }

  public override Object? VisitContinueStmt(LanguageParser.ContinueStmtContext context)
  {
    Code.Comment("Continue statement");
    if (ContinueLabel != null)
    {
      Code.B(ContinueLabel);
    }
    return null;
  }

  public override Object? VisitReturnStmt(LanguageParser.ReturnStmtContext context)
  {
    return null;
  }

  public override Object? VisitCallExpr(LanguageParser.CallExprContext context)
  {
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
    return null;
  }

  public override Object? VisitJoinCall(LanguageParser.JoinCallContext context)
  {
    return null;
  }

  public override Object? VisitLenCall(LanguageParser.LenCallContext context)
  {
    return null;
  }

  public override Object? VisitAppendCall(LanguageParser.AppendCallContext context)
  {
    return null;
  }

  public override Object? VisitFuncDCl(LanguageParser.FuncDClContext context)
  {
    return null;
  }



}