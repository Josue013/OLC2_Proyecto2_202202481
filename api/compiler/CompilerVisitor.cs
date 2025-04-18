
using analyzer;
using Antlr4.Runtime.Misc;
using api.compiler;
using System.Text;
using SliceValue = api.compiler.SliceValue;


public class CompilerVisitor : LanguageBaseVisitor<Object?>
{

  public ArmGenerator Code = new ArmGenerator();

  public CompilerVisitor()
  {

  }

    public override Object? VisitProgram(LanguageParser.ProgramContext context) {

      foreach (var dcl in context.dcl())
      {
        Visit(dcl);
      }

      return null;
    }

    public override Object? VisitVarDcl(LanguageParser.VarDclContext context) {
      return null;
    }

    public override Object? VisitAssign(LanguageParser.AssignContext context) {
      return null;
    }

    public override Object? VisitExprStmt(LanguageParser.ExprStmtContext context) {
      return null;
    }

    public override Object? VisitPrintStmt(LanguageParser.PrintStmtContext context) {

      Code.Comment("Print statement");
      Code.Comment("Visiting expression list");
      Visit(context.exprList());
      Code.Comment("Popping value to print");
      Code.Pop(Register.X0); // Pop the value to print
      Code.PrintInteger(Register.X0); // Call print_integer function
      
      
      return null;
    }

    public override Object? VisitIdentifier(LanguageParser.IdentifierContext context) {
      return null;
    }

    public override Object? VisitParens(LanguageParser.ParensContext context) {
      return null;
    }

    public override Object? VisitNegate(LanguageParser.NegateContext context) {
      return null;
    }

    public override Object? VisitInt(LanguageParser.IntContext context) {
      var value = context.INT().GetText();
      Code.Comment("Constant: " + value);
      Code.Mov(Register.X0, int.Parse(value));
      Code.Push(Register.X0);

      return null;
    }

    public override Object? VisitDecimal(LanguageParser.DecimalContext context) {
      return null;
    }

    public override Object? VisitBool(LanguageParser.BoolContext context) {
      return null;
    }

    public override Object? VisitNil(LanguageParser.NilContext context) {
      return null;
    }

    public override Object? VisitString(LanguageParser.StringContext context) {
      return null;
    }

    public override Object? VisitRune(LanguageParser.RuneContext context) {
      return null;
    }

    public override Object? VisitBlockStmt(LanguageParser.BlockStmtContext context) {
      return null;
    }

    public override Object? VisitMulDiv(LanguageParser.MulDivContext context) {

      Code.Comment("Mul/Div operation");
      var operation = context.op.Text;

      // 1 * 2
      // top -> []
      Code.Comment("Visiting left operand");
      Visit(context.expr(0)); // Visit 2; top -> [2, 1]
      Code.Comment("Visiting right operand");
      Visit(context.expr(1)); // Visit 1; top -> [1]

      Code.Comment("Popping operands");
      Code.Pop(Register.X1); // Pop 2; top -> [1]
      Code.Pop(Register.X0); // Pop 1; top -> []

      if (operation == "*")
      {
        Code.Mul(Register.X0, Register.X0, Register.X1); // X0 = X0 * X1
      }
      else if (operation == "/")
      {
        Code.Div(Register.X0, Register.X0, Register.X1); // X0 = X0 / X1
      }

      Code.Comment("Pushing result");
      Code.Push(Register.X0); // Push result; top -> [result]

      return null;
    }

    public override Object? VisitAddSub(LanguageParser.AddSubContext context) {

      Code.Comment("Add/Sub operation");
      var operation = context.op.Text;

      // 1 + 2
      // top -> []
      Code.Comment("Visiting left operand");
      Visit(context.expr(0)); // Visit 2; top -> [2, 1]
      Code.Comment("Visiting right operand");
      Visit(context.expr(1)); // Visit 1; top -> [1]

      Code.Comment("Popping operands");
      Code.Pop(Register.X1); // Pop 2; top -> [1]
      Code.Pop(Register.X0); // Pop 1; top -> []

      if (operation == "+")
      {
        Code.Add(Register.X0, Register.X0, Register.X1); // X0 = X0 + X1
      }
      else if (operation == "-")
      {
        Code.Sub(Register.X0, Register.X0, Register.X1); // X0 = X0 - X1
      }

      Code.Comment("Pushing result");
      Code.Push(Register.X0); // Push result; top -> [result]

      return null;
    }

    public override Object? VisitMod(LanguageParser.ModContext context) {

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

    public override Object? VisitAddAssign(LanguageParser.AddAssignContext context) {
      return null;
    }

    public override Object? VisitSubAssign(LanguageParser.SubAssignContext context) {
      return null;
    }

    public override Object? VisitRelational(LanguageParser.RelationalContext context) {
      return null;
    }

    public override Object? VisitComparison(LanguageParser.ComparisonContext context) {
      return null;
    }

    public override Object? VisitLogical(LanguageParser.LogicalContext context) {
      return null;
    }

    public override Object? VisitNot(LanguageParser.NotContext context) {
      return null;
    }

    public override Object? VisitIfStmt(LanguageParser.IfStmtContext context) {
      return null;
    }

    public override Object? VisitSwitchStmt(LanguageParser.SwitchStmtContext context) {
      return null;
    }

    public override Object? VisitIncdec(LanguageParser.IncdecContext context) {
      return null;
    }

    public override Object? VisitForWhileStmt(LanguageParser.ForWhileStmtContext context) {
      return null;
    }

    public override Object? VisitForClassicStmt(LanguageParser.ForClassicStmtContext context) {
      return null;
    }

    public override Object? VisitForRangeStmt(LanguageParser.ForRangeStmtContext context) {
      return null;
    }

    public override Object? VisitSlice1Stmt(LanguageParser.Slice1StmtContext context) {
      return null;
    }

    public override Object? VisitSlice2Stmt(LanguageParser.Slice2StmtContext context) {
      return null;
    }

    public override Object? VisitSlice3Stmt(LanguageParser.Slice3StmtContext context) {
      return null;
    }

    public override Object? VisitSlice6Stmt(LanguageParser.Slice6StmtContext context) {
      return null;
    }

    public override Object? VisitSlice4Stmt(LanguageParser.Slice4StmtContext context) {
      return null;
    }

    public override Object? VisitSlice5Stmt(LanguageParser.Slice5StmtContext context) {
      return null;
    }

    public override Object? VisitSlice7Stmt(LanguageParser.Slice7StmtContext context) {
      return null;
    }

    public override Object? VisitBreakStmt(LanguageParser.BreakStmtContext context) {
      return null;
    }

    public override Object? VisitContinueStmt(LanguageParser.ContinueStmtContext context) {
      return null;
    }

    public override Object? VisitReturnStmt(LanguageParser.ReturnStmtContext context) {
      return null;
    }

    public override Object? VisitCallExpr(LanguageParser.CallExprContext context) {
      return null;
    }

    public override Object? VisitAtoiCall(LanguageParser.AtoiCallContext context) {
      return null;
    }

    public override Object? VisitParseFloatCall(LanguageParser.ParseFloatCallContext context) {
      return null;
    }

    public override Object? VisitTypeOfCall(LanguageParser.TypeOfCallContext context) {
      return null;
    }

    public override Object? VisitIndexCall(LanguageParser.IndexCallContext context) {
      return null;
    }

    public override Object? VisitJoinCall(LanguageParser.JoinCallContext context) {
      return null;
    }

    public override Object? VisitLenCall(LanguageParser.LenCallContext context) {
      return null;
    }

    public override Object? VisitAppendCall(LanguageParser.AppendCallContext context) {
      return null;
    }

    public override Object? VisitFuncDCl(LanguageParser.FuncDClContext context) {
      return null;
    }



}