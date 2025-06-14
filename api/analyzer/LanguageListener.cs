//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     ANTLR Version: 4.13.2
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

// Generated from Language.g4 by ANTLR 4.13.2

// Unreachable code detected
#pragma warning disable 0162
// The variable '...' is assigned but its value is never used
#pragma warning disable 0219
// Missing XML comment for publicly visible type or member '...'
#pragma warning disable 1591
// Ambiguous reference in cref attribute
#pragma warning disable 419

namespace analyzer {
using Antlr4.Runtime.Misc;
using IParseTreeListener = Antlr4.Runtime.Tree.IParseTreeListener;
using IToken = Antlr4.Runtime.IToken;

/// <summary>
/// This interface defines a complete listener for a parse tree produced by
/// <see cref="LanguageParser"/>.
/// </summary>
[System.CodeDom.Compiler.GeneratedCode("ANTLR", "4.13.2")]
[System.CLSCompliant(false)]
public interface ILanguageListener : IParseTreeListener {
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.program"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterProgram([NotNull] LanguageParser.ProgramContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.program"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitProgram([NotNull] LanguageParser.ProgramContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.dcl"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterDcl([NotNull] LanguageParser.DclContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.dcl"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitDcl([NotNull] LanguageParser.DclContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.varDcl"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterVarDcl([NotNull] LanguageParser.VarDclContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.varDcl"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitVarDcl([NotNull] LanguageParser.VarDclContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.varDcl2"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterVarDcl2([NotNull] LanguageParser.VarDcl2Context context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.varDcl2"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitVarDcl2([NotNull] LanguageParser.VarDcl2Context context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.funcDCl"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterFuncDCl([NotNull] LanguageParser.FuncDClContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.funcDCl"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitFuncDCl([NotNull] LanguageParser.FuncDClContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.structDcl"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterStructDcl([NotNull] LanguageParser.StructDclContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.structDcl"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitStructDcl([NotNull] LanguageParser.StructDclContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.structBody"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterStructBody([NotNull] LanguageParser.StructBodyContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.structBody"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitStructBody([NotNull] LanguageParser.StructBodyContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.varDCLstruct"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterVarDCLstruct([NotNull] LanguageParser.VarDCLstructContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.varDCLstruct"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitVarDCLstruct([NotNull] LanguageParser.VarDCLstructContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.params"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterParams([NotNull] LanguageParser.ParamsContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.params"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitParams([NotNull] LanguageParser.ParamsContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.param"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterParam([NotNull] LanguageParser.ParamContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.param"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitParam([NotNull] LanguageParser.ParamContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>ExprStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterExprStmt([NotNull] LanguageParser.ExprStmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>ExprStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitExprStmt([NotNull] LanguageParser.ExprStmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>PrintStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterPrintStmt([NotNull] LanguageParser.PrintStmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>PrintStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitPrintStmt([NotNull] LanguageParser.PrintStmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>BlockStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterBlockStmt([NotNull] LanguageParser.BlockStmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>BlockStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitBlockStmt([NotNull] LanguageParser.BlockStmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>IfStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterIfStmt([NotNull] LanguageParser.IfStmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>IfStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitIfStmt([NotNull] LanguageParser.IfStmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>SwitchStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterSwitchStmt([NotNull] LanguageParser.SwitchStmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>SwitchStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitSwitchStmt([NotNull] LanguageParser.SwitchStmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>ForWhileStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterForWhileStmt([NotNull] LanguageParser.ForWhileStmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>ForWhileStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitForWhileStmt([NotNull] LanguageParser.ForWhileStmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>ForClassicStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterForClassicStmt([NotNull] LanguageParser.ForClassicStmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>ForClassicStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitForClassicStmt([NotNull] LanguageParser.ForClassicStmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>ForRangeStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterForRangeStmt([NotNull] LanguageParser.ForRangeStmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>ForRangeStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitForRangeStmt([NotNull] LanguageParser.ForRangeStmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>IncDecStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterIncDecStmt([NotNull] LanguageParser.IncDecStmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>IncDecStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitIncDecStmt([NotNull] LanguageParser.IncDecStmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Slice1xd</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterSlice1xd([NotNull] LanguageParser.Slice1xdContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Slice1xd</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitSlice1xd([NotNull] LanguageParser.Slice1xdContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Slice2xd</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterSlice2xd([NotNull] LanguageParser.Slice2xdContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Slice2xd</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitSlice2xd([NotNull] LanguageParser.Slice2xdContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>BreakStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterBreakStmt([NotNull] LanguageParser.BreakStmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>BreakStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitBreakStmt([NotNull] LanguageParser.BreakStmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>ContinueStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterContinueStmt([NotNull] LanguageParser.ContinueStmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>ContinueStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitContinueStmt([NotNull] LanguageParser.ContinueStmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>ReturnStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterReturnStmt([NotNull] LanguageParser.ReturnStmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>ReturnStmt</c>
	/// labeled alternative in <see cref="LanguageParser.stmt"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitReturnStmt([NotNull] LanguageParser.ReturnStmtContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.forInit"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterForInit([NotNull] LanguageParser.ForInitContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.forInit"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitForInit([NotNull] LanguageParser.ForInitContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.incdec"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterIncdec([NotNull] LanguageParser.IncdecContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.incdec"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitIncdec([NotNull] LanguageParser.IncdecContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Slice1Stmt</c>
	/// labeled alternative in <see cref="LanguageParser.slice1"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterSlice1Stmt([NotNull] LanguageParser.Slice1StmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Slice1Stmt</c>
	/// labeled alternative in <see cref="LanguageParser.slice1"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitSlice1Stmt([NotNull] LanguageParser.Slice1StmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Slice2Stmt</c>
	/// labeled alternative in <see cref="LanguageParser.slice1"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterSlice2Stmt([NotNull] LanguageParser.Slice2StmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Slice2Stmt</c>
	/// labeled alternative in <see cref="LanguageParser.slice1"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitSlice2Stmt([NotNull] LanguageParser.Slice2StmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Slice4Stmt</c>
	/// labeled alternative in <see cref="LanguageParser.slice2"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterSlice4Stmt([NotNull] LanguageParser.Slice4StmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Slice4Stmt</c>
	/// labeled alternative in <see cref="LanguageParser.slice2"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitSlice4Stmt([NotNull] LanguageParser.Slice4StmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Slice5Stmt</c>
	/// labeled alternative in <see cref="LanguageParser.slice2"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterSlice5Stmt([NotNull] LanguageParser.Slice5StmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Slice5Stmt</c>
	/// labeled alternative in <see cref="LanguageParser.slice2"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitSlice5Stmt([NotNull] LanguageParser.Slice5StmtContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.arrayContent"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterArrayContent([NotNull] LanguageParser.ArrayContentContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.arrayContent"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitArrayContent([NotNull] LanguageParser.ArrayContentContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.type"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterType([NotNull] LanguageParser.TypeContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.type"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitType([NotNull] LanguageParser.TypeContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.exprList"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterExprList([NotNull] LanguageParser.ExprListContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.exprList"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitExprList([NotNull] LanguageParser.ExprListContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>MulDiv</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterMulDiv([NotNull] LanguageParser.MulDivContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>MulDiv</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitMulDiv([NotNull] LanguageParser.MulDivContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Parens</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterParens([NotNull] LanguageParser.ParensContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Parens</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitParens([NotNull] LanguageParser.ParensContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Logical</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterLogical([NotNull] LanguageParser.LogicalContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Logical</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitLogical([NotNull] LanguageParser.LogicalContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Slice3Stmt</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterSlice3Stmt([NotNull] LanguageParser.Slice3StmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Slice3Stmt</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitSlice3Stmt([NotNull] LanguageParser.Slice3StmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>String</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterString([NotNull] LanguageParser.StringContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>String</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitString([NotNull] LanguageParser.StringContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>JoinCall</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterJoinCall([NotNull] LanguageParser.JoinCallContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>JoinCall</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitJoinCall([NotNull] LanguageParser.JoinCallContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Int</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterInt([NotNull] LanguageParser.IntContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Int</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitInt([NotNull] LanguageParser.IntContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>ParseFloatCall</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterParseFloatCall([NotNull] LanguageParser.ParseFloatCallContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>ParseFloatCall</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitParseFloatCall([NotNull] LanguageParser.ParseFloatCallContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>LenCall</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterLenCall([NotNull] LanguageParser.LenCallContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>LenCall</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitLenCall([NotNull] LanguageParser.LenCallContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Identifier</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterIdentifier([NotNull] LanguageParser.IdentifierContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Identifier</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitIdentifier([NotNull] LanguageParser.IdentifierContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Decimal</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterDecimal([NotNull] LanguageParser.DecimalContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Decimal</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitDecimal([NotNull] LanguageParser.DecimalContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Bool</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterBool([NotNull] LanguageParser.BoolContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Bool</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitBool([NotNull] LanguageParser.BoolContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>TypeOfCall</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterTypeOfCall([NotNull] LanguageParser.TypeOfCallContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>TypeOfCall</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitTypeOfCall([NotNull] LanguageParser.TypeOfCallContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>CallExpr</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterCallExpr([NotNull] LanguageParser.CallExprContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>CallExpr</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitCallExpr([NotNull] LanguageParser.CallExprContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>StructInst</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterStructInst([NotNull] LanguageParser.StructInstContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>StructInst</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitStructInst([NotNull] LanguageParser.StructInstContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>SubAssign</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterSubAssign([NotNull] LanguageParser.SubAssignContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>SubAssign</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitSubAssign([NotNull] LanguageParser.SubAssignContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Slice6Stmt</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterSlice6Stmt([NotNull] LanguageParser.Slice6StmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Slice6Stmt</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitSlice6Stmt([NotNull] LanguageParser.Slice6StmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Mod</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterMod([NotNull] LanguageParser.ModContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Mod</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitMod([NotNull] LanguageParser.ModContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>AddSub</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterAddSub([NotNull] LanguageParser.AddSubContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>AddSub</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitAddSub([NotNull] LanguageParser.AddSubContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Relational</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterRelational([NotNull] LanguageParser.RelationalContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Relational</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitRelational([NotNull] LanguageParser.RelationalContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>AddAssign</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterAddAssign([NotNull] LanguageParser.AddAssignContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>AddAssign</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitAddAssign([NotNull] LanguageParser.AddAssignContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Nil</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterNil([NotNull] LanguageParser.NilContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Nil</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitNil([NotNull] LanguageParser.NilContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Not</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterNot([NotNull] LanguageParser.NotContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Not</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitNot([NotNull] LanguageParser.NotContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Slice7Stmt</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterSlice7Stmt([NotNull] LanguageParser.Slice7StmtContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Slice7Stmt</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitSlice7Stmt([NotNull] LanguageParser.Slice7StmtContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>IndexCall</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterIndexCall([NotNull] LanguageParser.IndexCallContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>IndexCall</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitIndexCall([NotNull] LanguageParser.IndexCallContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Assign</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterAssign([NotNull] LanguageParser.AssignContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Assign</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitAssign([NotNull] LanguageParser.AssignContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>AtoiCall</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterAtoiCall([NotNull] LanguageParser.AtoiCallContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>AtoiCall</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitAtoiCall([NotNull] LanguageParser.AtoiCallContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Negate</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterNegate([NotNull] LanguageParser.NegateContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Negate</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitNegate([NotNull] LanguageParser.NegateContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>IncDecExpr</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterIncDecExpr([NotNull] LanguageParser.IncDecExprContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>IncDecExpr</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitIncDecExpr([NotNull] LanguageParser.IncDecExprContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>AppendCall</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterAppendCall([NotNull] LanguageParser.AppendCallContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>AppendCall</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitAppendCall([NotNull] LanguageParser.AppendCallContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Rune</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterRune([NotNull] LanguageParser.RuneContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Rune</c>
	/// labeled alternative in <see cref="LanguageParser.expr"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitRune([NotNull] LanguageParser.RuneContext context);
	/// <summary>
	/// Enter a parse tree produced by <see cref="LanguageParser.callEmbebida"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterCallEmbebida([NotNull] LanguageParser.CallEmbebidaContext context);
	/// <summary>
	/// Exit a parse tree produced by <see cref="LanguageParser.callEmbebida"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitCallEmbebida([NotNull] LanguageParser.CallEmbebidaContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>FuncCall</c>
	/// labeled alternative in <see cref="LanguageParser.call"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterFuncCall([NotNull] LanguageParser.FuncCallContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>FuncCall</c>
	/// labeled alternative in <see cref="LanguageParser.call"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitFuncCall([NotNull] LanguageParser.FuncCallContext context);
	/// <summary>
	/// Enter a parse tree produced by the <c>Get</c>
	/// labeled alternative in <see cref="LanguageParser.call"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void EnterGet([NotNull] LanguageParser.GetContext context);
	/// <summary>
	/// Exit a parse tree produced by the <c>Get</c>
	/// labeled alternative in <see cref="LanguageParser.call"/>.
	/// </summary>
	/// <param name="context">The parse tree.</param>
	void ExitGet([NotNull] LanguageParser.GetContext context);
}
} // namespace analyzer
