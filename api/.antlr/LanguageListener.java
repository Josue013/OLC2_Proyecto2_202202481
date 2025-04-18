// Generated from /media/josue/Elements/bato/p/OLC2_Proyecto2_202202481/api/Language.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link LanguageParser}.
 */
public interface LanguageListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link LanguageParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(LanguageParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(LanguageParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#dcl}.
	 * @param ctx the parse tree
	 */
	void enterDcl(LanguageParser.DclContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#dcl}.
	 * @param ctx the parse tree
	 */
	void exitDcl(LanguageParser.DclContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#varDcl}.
	 * @param ctx the parse tree
	 */
	void enterVarDcl(LanguageParser.VarDclContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#varDcl}.
	 * @param ctx the parse tree
	 */
	void exitVarDcl(LanguageParser.VarDclContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#funcDCl}.
	 * @param ctx the parse tree
	 */
	void enterFuncDCl(LanguageParser.FuncDClContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#funcDCl}.
	 * @param ctx the parse tree
	 */
	void exitFuncDCl(LanguageParser.FuncDClContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#structDcl}.
	 * @param ctx the parse tree
	 */
	void enterStructDcl(LanguageParser.StructDclContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#structDcl}.
	 * @param ctx the parse tree
	 */
	void exitStructDcl(LanguageParser.StructDclContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#structBody}.
	 * @param ctx the parse tree
	 */
	void enterStructBody(LanguageParser.StructBodyContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#structBody}.
	 * @param ctx the parse tree
	 */
	void exitStructBody(LanguageParser.StructBodyContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#varDCLstruct}.
	 * @param ctx the parse tree
	 */
	void enterVarDCLstruct(LanguageParser.VarDCLstructContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#varDCLstruct}.
	 * @param ctx the parse tree
	 */
	void exitVarDCLstruct(LanguageParser.VarDCLstructContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#params}.
	 * @param ctx the parse tree
	 */
	void enterParams(LanguageParser.ParamsContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#params}.
	 * @param ctx the parse tree
	 */
	void exitParams(LanguageParser.ParamsContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterExprStmt(LanguageParser.ExprStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitExprStmt(LanguageParser.ExprStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PrintStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterPrintStmt(LanguageParser.PrintStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PrintStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitPrintStmt(LanguageParser.PrintStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BlockStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterBlockStmt(LanguageParser.BlockStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BlockStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitBlockStmt(LanguageParser.BlockStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IfStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterIfStmt(LanguageParser.IfStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IfStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitIfStmt(LanguageParser.IfStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SwitchStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterSwitchStmt(LanguageParser.SwitchStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SwitchStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitSwitchStmt(LanguageParser.SwitchStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ForWhileStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterForWhileStmt(LanguageParser.ForWhileStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ForWhileStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitForWhileStmt(LanguageParser.ForWhileStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ForClassicStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterForClassicStmt(LanguageParser.ForClassicStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ForClassicStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitForClassicStmt(LanguageParser.ForClassicStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ForRangeStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterForRangeStmt(LanguageParser.ForRangeStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ForRangeStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitForRangeStmt(LanguageParser.ForRangeStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IncDecStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterIncDecStmt(LanguageParser.IncDecStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IncDecStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitIncDecStmt(LanguageParser.IncDecStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Slice1xd}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterSlice1xd(LanguageParser.Slice1xdContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Slice1xd}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitSlice1xd(LanguageParser.Slice1xdContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Slice2xd}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterSlice2xd(LanguageParser.Slice2xdContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Slice2xd}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitSlice2xd(LanguageParser.Slice2xdContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BreakStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterBreakStmt(LanguageParser.BreakStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BreakStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitBreakStmt(LanguageParser.BreakStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ContinueStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterContinueStmt(LanguageParser.ContinueStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ContinueStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitContinueStmt(LanguageParser.ContinueStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ReturnStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterReturnStmt(LanguageParser.ReturnStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ReturnStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitReturnStmt(LanguageParser.ReturnStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#forInit}.
	 * @param ctx the parse tree
	 */
	void enterForInit(LanguageParser.ForInitContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#forInit}.
	 * @param ctx the parse tree
	 */
	void exitForInit(LanguageParser.ForInitContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#incdec}.
	 * @param ctx the parse tree
	 */
	void enterIncdec(LanguageParser.IncdecContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#incdec}.
	 * @param ctx the parse tree
	 */
	void exitIncdec(LanguageParser.IncdecContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Slice1Stmt}
	 * labeled alternative in {@link LanguageParser#slice1}.
	 * @param ctx the parse tree
	 */
	void enterSlice1Stmt(LanguageParser.Slice1StmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Slice1Stmt}
	 * labeled alternative in {@link LanguageParser#slice1}.
	 * @param ctx the parse tree
	 */
	void exitSlice1Stmt(LanguageParser.Slice1StmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Slice2Stmt}
	 * labeled alternative in {@link LanguageParser#slice1}.
	 * @param ctx the parse tree
	 */
	void enterSlice2Stmt(LanguageParser.Slice2StmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Slice2Stmt}
	 * labeled alternative in {@link LanguageParser#slice1}.
	 * @param ctx the parse tree
	 */
	void exitSlice2Stmt(LanguageParser.Slice2StmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Slice3Stmt}
	 * labeled alternative in {@link LanguageParser#slice1}.
	 * @param ctx the parse tree
	 */
	void enterSlice3Stmt(LanguageParser.Slice3StmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Slice3Stmt}
	 * labeled alternative in {@link LanguageParser#slice1}.
	 * @param ctx the parse tree
	 */
	void exitSlice3Stmt(LanguageParser.Slice3StmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Slice4Stmt}
	 * labeled alternative in {@link LanguageParser#slice2}.
	 * @param ctx the parse tree
	 */
	void enterSlice4Stmt(LanguageParser.Slice4StmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Slice4Stmt}
	 * labeled alternative in {@link LanguageParser#slice2}.
	 * @param ctx the parse tree
	 */
	void exitSlice4Stmt(LanguageParser.Slice4StmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Slice5Stmt}
	 * labeled alternative in {@link LanguageParser#slice2}.
	 * @param ctx the parse tree
	 */
	void enterSlice5Stmt(LanguageParser.Slice5StmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Slice5Stmt}
	 * labeled alternative in {@link LanguageParser#slice2}.
	 * @param ctx the parse tree
	 */
	void exitSlice5Stmt(LanguageParser.Slice5StmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#arrayContent}.
	 * @param ctx the parse tree
	 */
	void enterArrayContent(LanguageParser.ArrayContentContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#arrayContent}.
	 * @param ctx the parse tree
	 */
	void exitArrayContent(LanguageParser.ArrayContentContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#type}.
	 * @param ctx the parse tree
	 */
	void enterType(LanguageParser.TypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#type}.
	 * @param ctx the parse tree
	 */
	void exitType(LanguageParser.TypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#exprList}.
	 * @param ctx the parse tree
	 */
	void enterExprList(LanguageParser.ExprListContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#exprList}.
	 * @param ctx the parse tree
	 */
	void exitExprList(LanguageParser.ExprListContext ctx);
	/**
	 * Enter a parse tree produced by the {@code MulDiv}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterMulDiv(LanguageParser.MulDivContext ctx);
	/**
	 * Exit a parse tree produced by the {@code MulDiv}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitMulDiv(LanguageParser.MulDivContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Parens}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterParens(LanguageParser.ParensContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Parens}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitParens(LanguageParser.ParensContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Logical}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterLogical(LanguageParser.LogicalContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Logical}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitLogical(LanguageParser.LogicalContext ctx);
	/**
	 * Enter a parse tree produced by the {@code String}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterString(LanguageParser.StringContext ctx);
	/**
	 * Exit a parse tree produced by the {@code String}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitString(LanguageParser.StringContext ctx);
	/**
	 * Enter a parse tree produced by the {@code JoinCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterJoinCall(LanguageParser.JoinCallContext ctx);
	/**
	 * Exit a parse tree produced by the {@code JoinCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitJoinCall(LanguageParser.JoinCallContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Int}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterInt(LanguageParser.IntContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Int}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitInt(LanguageParser.IntContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ParseFloatCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterParseFloatCall(LanguageParser.ParseFloatCallContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ParseFloatCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitParseFloatCall(LanguageParser.ParseFloatCallContext ctx);
	/**
	 * Enter a parse tree produced by the {@code LenCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterLenCall(LanguageParser.LenCallContext ctx);
	/**
	 * Exit a parse tree produced by the {@code LenCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitLenCall(LanguageParser.LenCallContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Identifier}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterIdentifier(LanguageParser.IdentifierContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Identifier}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitIdentifier(LanguageParser.IdentifierContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Decimal}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterDecimal(LanguageParser.DecimalContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Decimal}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitDecimal(LanguageParser.DecimalContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Bool}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterBool(LanguageParser.BoolContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Bool}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitBool(LanguageParser.BoolContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Comparison}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterComparison(LanguageParser.ComparisonContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Comparison}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitComparison(LanguageParser.ComparisonContext ctx);
	/**
	 * Enter a parse tree produced by the {@code TypeOfCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterTypeOfCall(LanguageParser.TypeOfCallContext ctx);
	/**
	 * Exit a parse tree produced by the {@code TypeOfCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitTypeOfCall(LanguageParser.TypeOfCallContext ctx);
	/**
	 * Enter a parse tree produced by the {@code CallExpr}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterCallExpr(LanguageParser.CallExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code CallExpr}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitCallExpr(LanguageParser.CallExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code StructInst}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterStructInst(LanguageParser.StructInstContext ctx);
	/**
	 * Exit a parse tree produced by the {@code StructInst}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitStructInst(LanguageParser.StructInstContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SubAssign}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterSubAssign(LanguageParser.SubAssignContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SubAssign}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitSubAssign(LanguageParser.SubAssignContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Slice6Stmt}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterSlice6Stmt(LanguageParser.Slice6StmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Slice6Stmt}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitSlice6Stmt(LanguageParser.Slice6StmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Mod}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterMod(LanguageParser.ModContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Mod}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitMod(LanguageParser.ModContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AddSub}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAddSub(LanguageParser.AddSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AddSub}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAddSub(LanguageParser.AddSubContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Relational}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterRelational(LanguageParser.RelationalContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Relational}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitRelational(LanguageParser.RelationalContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AddAssign}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAddAssign(LanguageParser.AddAssignContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AddAssign}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAddAssign(LanguageParser.AddAssignContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Nil}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNil(LanguageParser.NilContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Nil}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNil(LanguageParser.NilContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Not}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNot(LanguageParser.NotContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Not}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNot(LanguageParser.NotContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Slice7Stmt}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterSlice7Stmt(LanguageParser.Slice7StmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Slice7Stmt}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitSlice7Stmt(LanguageParser.Slice7StmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IndexCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterIndexCall(LanguageParser.IndexCallContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IndexCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitIndexCall(LanguageParser.IndexCallContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Assign}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAssign(LanguageParser.AssignContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Assign}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAssign(LanguageParser.AssignContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AtoiCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAtoiCall(LanguageParser.AtoiCallContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AtoiCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAtoiCall(LanguageParser.AtoiCallContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Negate}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNegate(LanguageParser.NegateContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Negate}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNegate(LanguageParser.NegateContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IncDecExpr}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterIncDecExpr(LanguageParser.IncDecExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IncDecExpr}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitIncDecExpr(LanguageParser.IncDecExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AppendCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAppendCall(LanguageParser.AppendCallContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AppendCall}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAppendCall(LanguageParser.AppendCallContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Rune}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterRune(LanguageParser.RuneContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Rune}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitRune(LanguageParser.RuneContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#callEmbebida}.
	 * @param ctx the parse tree
	 */
	void enterCallEmbebida(LanguageParser.CallEmbebidaContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#callEmbebida}.
	 * @param ctx the parse tree
	 */
	void exitCallEmbebida(LanguageParser.CallEmbebidaContext ctx);
	/**
	 * Enter a parse tree produced by the {@code FuncCall}
	 * labeled alternative in {@link LanguageParser#call}.
	 * @param ctx the parse tree
	 */
	void enterFuncCall(LanguageParser.FuncCallContext ctx);
	/**
	 * Exit a parse tree produced by the {@code FuncCall}
	 * labeled alternative in {@link LanguageParser#call}.
	 * @param ctx the parse tree
	 */
	void exitFuncCall(LanguageParser.FuncCallContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Get}
	 * labeled alternative in {@link LanguageParser#call}.
	 * @param ctx the parse tree
	 */
	void enterGet(LanguageParser.GetContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Get}
	 * labeled alternative in {@link LanguageParser#call}.
	 * @param ctx the parse tree
	 */
	void exitGet(LanguageParser.GetContext ctx);
}