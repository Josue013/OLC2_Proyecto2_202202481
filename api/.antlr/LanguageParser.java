// Generated from /media/josue/Elements/bato/p/OLC2_Proyecto2_202202481___1/api/Language.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue"})
public class LanguageParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.13.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, T__33=34, T__34=35, T__35=36, T__36=37, T__37=38, 
		T__38=39, T__39=40, T__40=41, T__41=42, T__42=43, T__43=44, T__44=45, 
		T__45=46, T__46=47, T__47=48, T__48=49, T__49=50, T__50=51, T__51=52, 
		T__52=53, T__53=54, T__54=55, T__55=56, T__56=57, T__57=58, T__58=59, 
		INT=60, DECIMAL=61, RUNE=62, STRING=63, BOOL=64, NIL=65, ID=66, WS=67, 
		COMENTARIO=68, COMENTARIO_MULTILINEA=69;
	public static final int
		RULE_program = 0, RULE_dcl = 1, RULE_varDcl = 2, RULE_varDcl2 = 3, RULE_funcDCl = 4, 
		RULE_structDcl = 5, RULE_structBody = 6, RULE_varDCLstruct = 7, RULE_params = 8, 
		RULE_param = 9, RULE_stmt = 10, RULE_forInit = 11, RULE_incdec = 12, RULE_slice1 = 13, 
		RULE_slice2 = 14, RULE_arrayContent = 15, RULE_type = 16, RULE_exprList = 17, 
		RULE_expr = 18, RULE_callEmbebida = 19, RULE_call = 20;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "dcl", "varDcl", "varDcl2", "funcDCl", "structDcl", "structBody", 
			"varDCLstruct", "params", "param", "stmt", "forInit", "incdec", "slice1", 
			"slice2", "arrayContent", "type", "exprList", "expr", "callEmbebida", 
			"call"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "';'", "'var'", "'='", "':='", "'func'", "'('", "')'", "'{'", "'}'", 
			"'type'", "'struct'", "','", "'fmt.Println('", "'if'", "'else'", "'switch'", 
			"'case'", "':'", "'default'", "'for'", "'range'", "'break'", "'continue'", 
			"'return'", "'++'", "'--'", "'[]'", "'[][]'", "'['", "']'", "'int'", 
			"'float64'", "'string'", "'bool'", "'rune'", "'strconv.Atoi'", "'strconv.ParseFloat'", 
			"'reflect.TypeOf'", "'slices.Index'", "'strings.Join'", "'len'", "'append'", 
			"'-'", "'!'", "'*'", "'/'", "'%'", "'+'", "'+='", "'-='", "'<'", "'<='", 
			"'>'", "'>='", "'=='", "'!='", "'&&'", "'||'", "'.'", null, null, null, 
			null, null, "'nil'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			"INT", "DECIMAL", "RUNE", "STRING", "BOOL", "NIL", "ID", "WS", "COMENTARIO", 
			"COMENTARIO_MULTILINEA"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Language.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public LanguageParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ProgramContext extends ParserRuleContext {
		public List<DclContext> dcl() {
			return getRuleContexts(DclContext.class);
		}
		public DclContext dcl(int i) {
			return getRuleContext(DclContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(45);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -1152886388923734684L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 7L) != 0)) {
				{
				{
				setState(42);
				dcl();
				}
				}
				setState(47);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class DclContext extends ParserRuleContext {
		public VarDclContext varDcl() {
			return getRuleContext(VarDclContext.class,0);
		}
		public VarDcl2Context varDcl2() {
			return getRuleContext(VarDcl2Context.class,0);
		}
		public FuncDClContext funcDCl() {
			return getRuleContext(FuncDClContext.class,0);
		}
		public StructDclContext structDcl() {
			return getRuleContext(StructDclContext.class,0);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public DclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_dcl; }
	}

	public final DclContext dcl() throws RecognitionException {
		DclContext _localctx = new DclContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_dcl);
		int _la;
		try {
			setState(56);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(48);
				varDcl();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(49);
				varDcl2();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(50);
				funcDCl();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(51);
				structDcl();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(52);
				stmt();
				setState(54);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__0) {
					{
					setState(53);
					match(T__0);
					}
				}

				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class VarDclContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public VarDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDcl; }
	}

	public final VarDclContext varDcl() throws RecognitionException {
		VarDclContext _localctx = new VarDclContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_varDcl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(58);
			match(T__1);
			setState(59);
			match(ID);
			setState(60);
			type();
			setState(63);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__2) {
				{
				setState(61);
				match(T__2);
				setState(62);
				expr(0);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class VarDcl2Context extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public VarDcl2Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDcl2; }
	}

	public final VarDcl2Context varDcl2() throws RecognitionException {
		VarDcl2Context _localctx = new VarDcl2Context(_ctx, getState());
		enterRule(_localctx, 6, RULE_varDcl2);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(65);
			match(ID);
			setState(66);
			match(T__3);
			setState(67);
			expr(0);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class FuncDClContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ParamsContext params() {
			return getRuleContext(ParamsContext.class,0);
		}
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public List<DclContext> dcl() {
			return getRuleContexts(DclContext.class);
		}
		public DclContext dcl(int i) {
			return getRuleContext(DclContext.class,i);
		}
		public FuncDClContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcDCl; }
	}

	public final FuncDClContext funcDCl() throws RecognitionException {
		FuncDClContext _localctx = new FuncDClContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_funcDCl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(69);
			match(T__4);
			setState(70);
			match(ID);
			setState(71);
			match(T__5);
			setState(73);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ID) {
				{
				setState(72);
				params();
				}
			}

			setState(75);
			match(T__6);
			setState(77);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 66571993088L) != 0)) {
				{
				setState(76);
				type();
				}
			}

			setState(79);
			match(T__7);
			setState(83);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -1152886388923734684L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 7L) != 0)) {
				{
				{
				setState(80);
				dcl();
				}
				}
				setState(85);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(86);
			match(T__8);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StructDclContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public List<StructBodyContext> structBody() {
			return getRuleContexts(StructBodyContext.class);
		}
		public StructBodyContext structBody(int i) {
			return getRuleContext(StructBodyContext.class,i);
		}
		public StructDclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_structDcl; }
	}

	public final StructDclContext structDcl() throws RecognitionException {
		StructDclContext _localctx = new StructDclContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_structDcl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(88);
			match(T__9);
			setState(89);
			match(ID);
			setState(90);
			match(T__10);
			setState(91);
			match(T__7);
			setState(95);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==ID) {
				{
				{
				setState(92);
				structBody();
				}
				}
				setState(97);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(98);
			match(T__8);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StructBodyContext extends ParserRuleContext {
		public VarDCLstructContext varDCLstruct() {
			return getRuleContext(VarDCLstructContext.class,0);
		}
		public StructBodyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_structBody; }
	}

	public final StructBodyContext structBody() throws RecognitionException {
		StructBodyContext _localctx = new StructBodyContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_structBody);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(100);
			varDCLstruct();
			setState(102);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__0) {
				{
				setState(101);
				match(T__0);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class VarDCLstructContext extends ParserRuleContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public VarDCLstructContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDCLstruct; }
	}

	public final VarDCLstructContext varDCLstruct() throws RecognitionException {
		VarDCLstructContext _localctx = new VarDCLstructContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_varDCLstruct);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(104);
			match(ID);
			setState(107);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__30:
			case T__31:
			case T__32:
			case T__33:
			case T__34:
				{
				setState(105);
				type();
				}
				break;
			case ID:
				{
				setState(106);
				match(ID);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ParamsContext extends ParserRuleContext {
		public List<ParamContext> param() {
			return getRuleContexts(ParamContext.class);
		}
		public ParamContext param(int i) {
			return getRuleContext(ParamContext.class,i);
		}
		public ParamsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_params; }
	}

	public final ParamsContext params() throws RecognitionException {
		ParamsContext _localctx = new ParamsContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_params);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(109);
			param();
			setState(114);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__11) {
				{
				{
				setState(110);
				match(T__11);
				setState(111);
				param();
				}
				}
				setState(116);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ParamContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ParamContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_param; }
	}

	public final ParamContext param() throws RecognitionException {
		ParamContext _localctx = new ParamContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_param);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(117);
			match(ID);
			setState(118);
			type();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class StmtContext extends ParserRuleContext {
		public StmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stmt; }
	 
		public StmtContext() { }
		public void copyFrom(StmtContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ForClassicStmtContext extends StmtContext {
		public ForInitContext forInit() {
			return getRuleContext(ForInitContext.class,0);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public ForClassicStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SwitchStmtContext extends StmtContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public SwitchStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PrintStmtContext extends StmtContext {
		public ExprListContext exprList() {
			return getRuleContext(ExprListContext.class,0);
		}
		public PrintStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IncDecStmtContext extends StmtContext {
		public IncdecContext incdec() {
			return getRuleContext(IncdecContext.class,0);
		}
		public IncDecStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BlockStmtContext extends StmtContext {
		public List<DclContext> dcl() {
			return getRuleContexts(DclContext.class);
		}
		public DclContext dcl(int i) {
			return getRuleContext(DclContext.class,i);
		}
		public BlockStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ForRangeStmtContext extends StmtContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public ForRangeStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ForWhileStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public ForWhileStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ContinueStmtContext extends StmtContext {
		public ContinueStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IfStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public IfStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ExprStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BreakStmtContext extends StmtContext {
		public BreakStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class Slice1xdContext extends StmtContext {
		public Slice1Context slice1() {
			return getRuleContext(Slice1Context.class,0);
		}
		public Slice1xdContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class Slice2xdContext extends StmtContext {
		public Slice2Context slice2() {
			return getRuleContext(Slice2Context.class,0);
		}
		public Slice2xdContext(StmtContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ReturnStmtContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ReturnStmtContext(StmtContext ctx) { copyFrom(ctx); }
	}

	public final StmtContext stmt() throws RecognitionException {
		StmtContext _localctx = new StmtContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_stmt);
		int _la;
		try {
			setState(199);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,18,_ctx) ) {
			case 1:
				_localctx = new ExprStmtContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(120);
				expr(0);
				}
				break;
			case 2:
				_localctx = new PrintStmtContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(121);
				match(T__12);
				setState(122);
				exprList();
				setState(123);
				match(T__6);
				}
				break;
			case 3:
				_localctx = new BlockStmtContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(125);
				match(T__7);
				setState(129);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -1152886388923734684L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 7L) != 0)) {
					{
					{
					setState(126);
					dcl();
					}
					}
					setState(131);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(132);
				match(T__8);
				}
				break;
			case 4:
				_localctx = new IfStmtContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(133);
				match(T__13);
				setState(134);
				expr(0);
				setState(135);
				stmt();
				setState(138);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,12,_ctx) ) {
				case 1:
					{
					setState(136);
					match(T__14);
					setState(137);
					stmt();
					}
					break;
				}
				}
				break;
			case 5:
				_localctx = new SwitchStmtContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(140);
				match(T__15);
				setState(141);
				expr(0);
				setState(142);
				match(T__7);
				setState(154);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__16) {
					{
					{
					setState(143);
					match(T__16);
					setState(144);
					expr(0);
					setState(145);
					match(T__17);
					setState(149);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -1152886388923735740L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 7L) != 0)) {
						{
						{
						setState(146);
						stmt();
						}
						}
						setState(151);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					}
					}
					setState(156);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(165);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__18) {
					{
					setState(157);
					match(T__18);
					setState(158);
					match(T__17);
					setState(162);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -1152886388923735740L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 7L) != 0)) {
						{
						{
						setState(159);
						stmt();
						}
						}
						setState(164);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					}
				}

				setState(167);
				match(T__8);
				}
				break;
			case 6:
				_localctx = new ForWhileStmtContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(169);
				match(T__19);
				setState(170);
				expr(0);
				setState(171);
				stmt();
				}
				break;
			case 7:
				_localctx = new ForClassicStmtContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(173);
				match(T__19);
				setState(174);
				forInit();
				setState(175);
				match(T__0);
				setState(176);
				expr(0);
				setState(177);
				match(T__0);
				setState(178);
				expr(0);
				setState(179);
				stmt();
				}
				break;
			case 8:
				_localctx = new ForRangeStmtContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(181);
				match(T__19);
				setState(182);
				match(ID);
				setState(183);
				match(T__11);
				setState(184);
				match(ID);
				setState(185);
				match(T__3);
				setState(186);
				match(T__20);
				setState(187);
				expr(0);
				setState(188);
				stmt();
				}
				break;
			case 9:
				_localctx = new IncDecStmtContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(190);
				incdec();
				}
				break;
			case 10:
				_localctx = new Slice1xdContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(191);
				slice1();
				}
				break;
			case 11:
				_localctx = new Slice2xdContext(_localctx);
				enterOuterAlt(_localctx, 11);
				{
				setState(192);
				slice2();
				}
				break;
			case 12:
				_localctx = new BreakStmtContext(_localctx);
				enterOuterAlt(_localctx, 12);
				{
				setState(193);
				match(T__21);
				}
				break;
			case 13:
				_localctx = new ContinueStmtContext(_localctx);
				enterOuterAlt(_localctx, 13);
				{
				setState(194);
				match(T__22);
				}
				break;
			case 14:
				_localctx = new ReturnStmtContext(_localctx);
				enterOuterAlt(_localctx, 14);
				{
				setState(195);
				match(T__23);
				setState(197);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,17,_ctx) ) {
				case 1:
					{
					setState(196);
					expr(0);
					}
					break;
				}
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ForInitContext extends ParserRuleContext {
		public VarDclContext varDcl() {
			return getRuleContext(VarDclContext.class,0);
		}
		public VarDcl2Context varDcl2() {
			return getRuleContext(VarDcl2Context.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ForInitContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forInit; }
	}

	public final ForInitContext forInit() throws RecognitionException {
		ForInitContext _localctx = new ForInitContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_forInit);
		try {
			setState(204);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(201);
				varDcl();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(202);
				varDcl2();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(203);
				expr(0);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class IncdecContext extends ParserRuleContext {
		public Token op;
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public IncdecContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_incdec; }
	}

	public final IncdecContext incdec() throws RecognitionException {
		IncdecContext _localctx = new IncdecContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_incdec);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(206);
			match(ID);
			setState(207);
			((IncdecContext)_localctx).op = _input.LT(1);
			_la = _input.LA(1);
			if ( !(_la==T__24 || _la==T__25) ) {
				((IncdecContext)_localctx).op = (Token)_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class Slice1Context extends ParserRuleContext {
		public Slice1Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_slice1; }
	 
		public Slice1Context() { }
		public void copyFrom(Slice1Context ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class Slice1StmtContext extends Slice1Context {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ExprListContext exprList() {
			return getRuleContext(ExprListContext.class,0);
		}
		public Slice1StmtContext(Slice1Context ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class Slice2StmtContext extends Slice1Context {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public Slice2StmtContext(Slice1Context ctx) { copyFrom(ctx); }
	}

	public final Slice1Context slice1() throws RecognitionException {
		Slice1Context _localctx = new Slice1Context(_ctx, getState());
		enterRule(_localctx, 26, RULE_slice1);
		try {
			setState(221);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ID:
				_localctx = new Slice1StmtContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(209);
				match(ID);
				setState(210);
				match(T__3);
				setState(211);
				match(T__26);
				setState(212);
				type();
				setState(213);
				match(T__7);
				setState(214);
				exprList();
				setState(215);
				match(T__8);
				}
				break;
			case T__1:
				_localctx = new Slice2StmtContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(217);
				match(T__1);
				setState(218);
				match(ID);
				setState(219);
				match(T__26);
				setState(220);
				type();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class Slice2Context extends ParserRuleContext {
		public Slice2Context(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_slice2; }
	 
		public Slice2Context() { }
		public void copyFrom(Slice2Context ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class Slice5StmtContext extends Slice2Context {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public Slice5StmtContext(Slice2Context ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class Slice4StmtContext extends Slice2Context {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public List<ArrayContentContext> arrayContent() {
			return getRuleContexts(ArrayContentContext.class);
		}
		public ArrayContentContext arrayContent(int i) {
			return getRuleContext(ArrayContentContext.class,i);
		}
		public Slice4StmtContext(Slice2Context ctx) { copyFrom(ctx); }
	}

	public final Slice2Context slice2() throws RecognitionException {
		Slice2Context _localctx = new Slice2Context(_ctx, getState());
		enterRule(_localctx, 28, RULE_slice2);
		int _la;
		try {
			setState(250);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,22,_ctx) ) {
			case 1:
				_localctx = new Slice4StmtContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(223);
				match(ID);
				setState(224);
				match(T__3);
				setState(225);
				match(T__27);
				setState(226);
				type();
				setState(227);
				match(T__7);
				setState(228);
				arrayContent();
				setState(229);
				match(T__11);
				setState(235);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__7) {
					{
					{
					setState(230);
					arrayContent();
					setState(231);
					match(T__11);
					}
					}
					setState(237);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(238);
				match(T__8);
				}
				break;
			case 2:
				_localctx = new Slice5StmtContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(240);
				match(ID);
				setState(241);
				match(T__28);
				setState(242);
				expr(0);
				setState(243);
				match(T__29);
				setState(244);
				match(T__28);
				setState(245);
				expr(0);
				setState(246);
				match(T__29);
				setState(247);
				match(T__2);
				setState(248);
				expr(0);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ArrayContentContext extends ParserRuleContext {
		public ExprListContext exprList() {
			return getRuleContext(ExprListContext.class,0);
		}
		public ArrayContentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_arrayContent; }
	}

	public final ArrayContentContext arrayContent() throws RecognitionException {
		ArrayContentContext _localctx = new ArrayContentContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_arrayContent);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(252);
			match(T__7);
			setState(253);
			exprList();
			setState(254);
			match(T__8);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class TypeContext extends ParserRuleContext {
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_type);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(256);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 66571993088L) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExprListContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ExprListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_exprList; }
	}

	public final ExprListContext exprList() throws RecognitionException {
		ExprListContext _localctx = new ExprListContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_exprList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(258);
			expr(0);
			setState(263);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__11) {
				{
				{
				setState(259);
				match(T__11);
				setState(260);
				expr(0);
				}
				}
				setState(265);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExprContext extends ParserRuleContext {
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
	 
		public ExprContext() { }
		public void copyFrom(ExprContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class MulDivContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public MulDivContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ParensContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ParensContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class LogicalContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public LogicalContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class Slice3StmtContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public Slice3StmtContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StringContext extends ExprContext {
		public TerminalNode STRING() { return getToken(LanguageParser.STRING, 0); }
		public StringContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class JoinCallContext extends ExprContext {
		public CallEmbebidaContext callEmbebida() {
			return getRuleContext(CallEmbebidaContext.class,0);
		}
		public JoinCallContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IntContext extends ExprContext {
		public TerminalNode INT() { return getToken(LanguageParser.INT, 0); }
		public IntContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ParseFloatCallContext extends ExprContext {
		public CallEmbebidaContext callEmbebida() {
			return getRuleContext(CallEmbebidaContext.class,0);
		}
		public ParseFloatCallContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class LenCallContext extends ExprContext {
		public CallEmbebidaContext callEmbebida() {
			return getRuleContext(CallEmbebidaContext.class,0);
		}
		public LenCallContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IdentifierContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public IdentifierContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DecimalContext extends ExprContext {
		public TerminalNode DECIMAL() { return getToken(LanguageParser.DECIMAL, 0); }
		public DecimalContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BoolContext extends ExprContext {
		public TerminalNode BOOL() { return getToken(LanguageParser.BOOL, 0); }
		public BoolContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class TypeOfCallContext extends ExprContext {
		public CallEmbebidaContext callEmbebida() {
			return getRuleContext(CallEmbebidaContext.class,0);
		}
		public TypeOfCallContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CallExprContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<CallContext> call() {
			return getRuleContexts(CallContext.class);
		}
		public CallContext call(int i) {
			return getRuleContext(CallContext.class,i);
		}
		public CallExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StructInstContext extends ExprContext {
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public StructInstContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SubAssignContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public SubAssignContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class Slice6StmtContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public Slice6StmtContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ModContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ModContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AddSubContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public AddSubContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class RelationalContext extends ExprContext {
		public Token op;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public RelationalContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AddAssignContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public AddAssignContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NilContext extends ExprContext {
		public TerminalNode NIL() { return getToken(LanguageParser.NIL, 0); }
		public NilContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NotContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public NotContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class Slice7StmtContext extends ExprContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public Slice7StmtContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IndexCallContext extends ExprContext {
		public CallEmbebidaContext callEmbebida() {
			return getRuleContext(CallEmbebidaContext.class,0);
		}
		public IndexCallContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AssignContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public AssignContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AtoiCallContext extends ExprContext {
		public CallEmbebidaContext callEmbebida() {
			return getRuleContext(CallEmbebidaContext.class,0);
		}
		public AtoiCallContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NegateContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public NegateContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IncDecExprContext extends ExprContext {
		public IncdecContext incdec() {
			return getRuleContext(IncdecContext.class,0);
		}
		public IncDecExprContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AppendCallContext extends ExprContext {
		public CallEmbebidaContext callEmbebida() {
			return getRuleContext(CallEmbebidaContext.class,0);
		}
		public AppendCallContext(ExprContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class RuneContext extends ExprContext {
		public TerminalNode RUNE() { return getToken(LanguageParser.RUNE, 0); }
		public RuneContext(ExprContext ctx) { copyFrom(ctx); }
	}

	public final ExprContext expr() throws RecognitionException {
		return expr(0);
	}

	private ExprContext expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExprContext _localctx = new ExprContext(_ctx, _parentState);
		ExprContext _prevctx = _localctx;
		int _startState = 36;
		enterRecursionRule(_localctx, 36, RULE_expr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(341);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,25,_ctx) ) {
			case 1:
				{
				_localctx = new ParensContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(267);
				match(T__5);
				setState(268);
				expr(0);
				setState(269);
				match(T__6);
				}
				break;
			case 2:
				{
				_localctx = new AtoiCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(271);
				match(T__35);
				setState(272);
				callEmbebida();
				}
				break;
			case 3:
				{
				_localctx = new ParseFloatCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(273);
				match(T__36);
				setState(274);
				callEmbebida();
				}
				break;
			case 4:
				{
				_localctx = new TypeOfCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(275);
				match(T__37);
				setState(276);
				callEmbebida();
				}
				break;
			case 5:
				{
				_localctx = new IndexCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(277);
				match(T__38);
				setState(278);
				callEmbebida();
				}
				break;
			case 6:
				{
				_localctx = new JoinCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(279);
				match(T__39);
				setState(280);
				callEmbebida();
				}
				break;
			case 7:
				{
				_localctx = new LenCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(281);
				match(T__40);
				setState(282);
				callEmbebida();
				}
				break;
			case 8:
				{
				_localctx = new AppendCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(283);
				match(T__41);
				setState(284);
				callEmbebida();
				}
				break;
			case 9:
				{
				_localctx = new NegateContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(285);
				match(T__42);
				setState(286);
				expr(27);
				}
				break;
			case 10:
				{
				_localctx = new NotContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(287);
				match(T__43);
				setState(288);
				expr(26);
				}
				break;
			case 11:
				{
				_localctx = new AddAssignContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(289);
				match(ID);
				setState(290);
				match(T__48);
				setState(291);
				expr(22);
				}
				break;
			case 12:
				{
				_localctx = new SubAssignContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(292);
				match(ID);
				setState(293);
				match(T__49);
				setState(294);
				expr(21);
				}
				break;
			case 13:
				{
				_localctx = new Slice3StmtContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(295);
				match(ID);
				setState(296);
				match(T__28);
				setState(297);
				expr(0);
				setState(298);
				match(T__29);
				setState(299);
				match(T__2);
				setState(300);
				expr(12);
				}
				break;
			case 14:
				{
				_localctx = new Slice6StmtContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(302);
				match(ID);
				setState(303);
				match(T__28);
				setState(304);
				expr(0);
				setState(305);
				match(T__29);
				}
				break;
			case 15:
				{
				_localctx = new Slice7StmtContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(307);
				match(ID);
				setState(308);
				match(T__28);
				setState(309);
				expr(0);
				setState(310);
				match(T__29);
				setState(311);
				match(T__28);
				setState(312);
				expr(0);
				setState(313);
				match(T__29);
				}
				break;
			case 16:
				{
				_localctx = new IntContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(315);
				match(INT);
				}
				break;
			case 17:
				{
				_localctx = new DecimalContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(316);
				match(DECIMAL);
				}
				break;
			case 18:
				{
				_localctx = new RuneContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(317);
				match(RUNE);
				}
				break;
			case 19:
				{
				_localctx = new StringContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(318);
				match(STRING);
				}
				break;
			case 20:
				{
				_localctx = new BoolContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(319);
				match(BOOL);
				}
				break;
			case 21:
				{
				_localctx = new NilContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(320);
				match(NIL);
				}
				break;
			case 22:
				{
				_localctx = new IdentifierContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(321);
				match(ID);
				}
				break;
			case 23:
				{
				_localctx = new IncDecExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(322);
				incdec();
				}
				break;
			case 24:
				{
				_localctx = new StructInstContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(323);
				match(ID);
				setState(324);
				match(T__7);
				setState(325);
				match(ID);
				setState(326);
				match(T__17);
				setState(327);
				expr(0);
				setState(328);
				match(T__11);
				setState(336);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==ID) {
					{
					{
					setState(329);
					match(ID);
					setState(330);
					match(T__17);
					setState(331);
					expr(0);
					setState(332);
					match(T__11);
					}
					}
					setState(338);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(339);
				match(T__8);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(384);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(382);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,27,_ctx) ) {
					case 1:
						{
						_localctx = new MulDivContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(343);
						if (!(precpred(_ctx, 25))) throw new FailedPredicateException(this, "precpred(_ctx, 25)");
						setState(344);
						((MulDivContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__44 || _la==T__45) ) {
							((MulDivContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(345);
						expr(26);
						}
						break;
					case 2:
						{
						_localctx = new ModContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(346);
						if (!(precpred(_ctx, 24))) throw new FailedPredicateException(this, "precpred(_ctx, 24)");
						setState(347);
						match(T__46);
						setState(348);
						expr(25);
						}
						break;
					case 3:
						{
						_localctx = new AddSubContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(349);
						if (!(precpred(_ctx, 23))) throw new FailedPredicateException(this, "precpred(_ctx, 23)");
						setState(350);
						((AddSubContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__42 || _la==T__47) ) {
							((AddSubContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(351);
						expr(24);
						}
						break;
					case 4:
						{
						_localctx = new RelationalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(352);
						if (!(precpred(_ctx, 20))) throw new FailedPredicateException(this, "precpred(_ctx, 20)");
						setState(353);
						((RelationalContext)_localctx).op = match(T__50);
						setState(354);
						expr(21);
						}
						break;
					case 5:
						{
						_localctx = new RelationalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(355);
						if (!(precpred(_ctx, 19))) throw new FailedPredicateException(this, "precpred(_ctx, 19)");
						setState(356);
						((RelationalContext)_localctx).op = match(T__51);
						setState(357);
						expr(20);
						}
						break;
					case 6:
						{
						_localctx = new RelationalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(358);
						if (!(precpred(_ctx, 18))) throw new FailedPredicateException(this, "precpred(_ctx, 18)");
						setState(359);
						((RelationalContext)_localctx).op = match(T__52);
						setState(360);
						expr(19);
						}
						break;
					case 7:
						{
						_localctx = new RelationalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(361);
						if (!(precpred(_ctx, 17))) throw new FailedPredicateException(this, "precpred(_ctx, 17)");
						setState(362);
						((RelationalContext)_localctx).op = match(T__53);
						setState(363);
						expr(18);
						}
						break;
					case 8:
						{
						_localctx = new RelationalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(364);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(365);
						((RelationalContext)_localctx).op = match(T__54);
						setState(366);
						expr(17);
						}
						break;
					case 9:
						{
						_localctx = new RelationalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(367);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(368);
						((RelationalContext)_localctx).op = match(T__55);
						setState(369);
						expr(16);
						}
						break;
					case 10:
						{
						_localctx = new LogicalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(370);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(371);
						((LogicalContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__56 || _la==T__57) ) {
							((LogicalContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(372);
						expr(15);
						}
						break;
					case 11:
						{
						_localctx = new AssignContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(373);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(374);
						match(T__2);
						setState(375);
						expr(14);
						}
						break;
					case 12:
						{
						_localctx = new CallExprContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(376);
						if (!(precpred(_ctx, 28))) throw new FailedPredicateException(this, "precpred(_ctx, 28)");
						setState(378); 
						_errHandler.sync(this);
						_alt = 1;
						do {
							switch (_alt) {
							case 1:
								{
								{
								setState(377);
								call();
								}
								}
								break;
							default:
								throw new NoViableAltException(this);
							}
							setState(380); 
							_errHandler.sync(this);
							_alt = getInterpreter().adaptivePredict(_input,26,_ctx);
						} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
						}
						break;
					}
					} 
				}
				setState(386);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CallEmbebidaContext extends ParserRuleContext {
		public ExprListContext exprList() {
			return getRuleContext(ExprListContext.class,0);
		}
		public CallEmbebidaContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_callEmbebida; }
	}

	public final CallEmbebidaContext callEmbebida() throws RecognitionException {
		CallEmbebidaContext _localctx = new CallEmbebidaContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_callEmbebida);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(387);
			match(T__5);
			setState(389);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (((((_la - 6)) & ~0x3f) == 0 && ((1L << (_la - 6)) & 2287829159386284033L) != 0)) {
				{
				setState(388);
				exprList();
				}
			}

			setState(391);
			match(T__6);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CallContext extends ParserRuleContext {
		public CallContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_call; }
	 
		public CallContext() { }
		public void copyFrom(CallContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class FuncCallContext extends CallContext {
		public ExprListContext exprList() {
			return getRuleContext(ExprListContext.class,0);
		}
		public FuncCallContext(CallContext ctx) { copyFrom(ctx); }
	}
	@SuppressWarnings("CheckReturnValue")
	public static class GetContext extends CallContext {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public GetContext(CallContext ctx) { copyFrom(ctx); }
	}

	public final CallContext call() throws RecognitionException {
		CallContext _localctx = new CallContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_call);
		int _la;
		try {
			setState(400);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__5:
				_localctx = new FuncCallContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(393);
				match(T__5);
				setState(395);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (((((_la - 6)) & ~0x3f) == 0 && ((1L << (_la - 6)) & 2287829159386284033L) != 0)) {
					{
					setState(394);
					exprList();
					}
				}

				setState(397);
				match(T__6);
				}
				break;
			case T__58:
				_localctx = new GetContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(398);
				match(T__58);
				setState(399);
				match(ID);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 18:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 25);
		case 1:
			return precpred(_ctx, 24);
		case 2:
			return precpred(_ctx, 23);
		case 3:
			return precpred(_ctx, 20);
		case 4:
			return precpred(_ctx, 19);
		case 5:
			return precpred(_ctx, 18);
		case 6:
			return precpred(_ctx, 17);
		case 7:
			return precpred(_ctx, 16);
		case 8:
			return precpred(_ctx, 15);
		case 9:
			return precpred(_ctx, 14);
		case 10:
			return precpred(_ctx, 13);
		case 11:
			return precpred(_ctx, 28);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001E\u0193\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002\u0012\u0007\u0012"+
		"\u0002\u0013\u0007\u0013\u0002\u0014\u0007\u0014\u0001\u0000\u0005\u0000"+
		",\b\u0000\n\u0000\f\u0000/\t\u0000\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0001\u0001\u0001\u0001\u0003\u00017\b\u0001\u0003\u0001"+
		"9\b\u0001\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0001\u0002"+
		"\u0003\u0002@\b\u0002\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0003"+
		"\u0001\u0004\u0001\u0004\u0001\u0004\u0001\u0004\u0003\u0004J\b\u0004"+
		"\u0001\u0004\u0001\u0004\u0003\u0004N\b\u0004\u0001\u0004\u0001\u0004"+
		"\u0005\u0004R\b\u0004\n\u0004\f\u0004U\t\u0004\u0001\u0004\u0001\u0004"+
		"\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0001\u0005\u0005\u0005"+
		"^\b\u0005\n\u0005\f\u0005a\t\u0005\u0001\u0005\u0001\u0005\u0001\u0006"+
		"\u0001\u0006\u0003\u0006g\b\u0006\u0001\u0007\u0001\u0007\u0001\u0007"+
		"\u0003\u0007l\b\u0007\u0001\b\u0001\b\u0001\b\u0005\bq\b\b\n\b\f\bt\t"+
		"\b\u0001\t\u0001\t\u0001\t\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0005\n\u0080\b\n\n\n\f\n\u0083\t\n\u0001\n\u0001\n\u0001\n"+
		"\u0001\n\u0001\n\u0001\n\u0003\n\u008b\b\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0005\n\u0094\b\n\n\n\f\n\u0097\t\n\u0005\n"+
		"\u0099\b\n\n\n\f\n\u009c\t\n\u0001\n\u0001\n\u0001\n\u0005\n\u00a1\b\n"+
		"\n\n\f\n\u00a4\t\n\u0003\n\u00a6\b\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0003\n\u00c6"+
		"\b\n\u0003\n\u00c8\b\n\u0001\u000b\u0001\u000b\u0001\u000b\u0003\u000b"+
		"\u00cd\b\u000b\u0001\f\u0001\f\u0001\f\u0001\r\u0001\r\u0001\r\u0001\r"+
		"\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0003"+
		"\r\u00de\b\r\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e"+
		"\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0005\u000e"+
		"\u00ea\b\u000e\n\u000e\f\u000e\u00ed\t\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0003\u000e\u00fb\b\u000e\u0001"+
		"\u000f\u0001\u000f\u0001\u000f\u0001\u000f\u0001\u0010\u0001\u0010\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0005\u0011\u0106\b\u0011\n\u0011\f\u0011"+
		"\u0109\t\u0011\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0005\u0012\u014f\b\u0012\n\u0012"+
		"\f\u0012\u0152\t\u0012\u0001\u0012\u0001\u0012\u0003\u0012\u0156\b\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0004\u0012"+
		"\u017b\b\u0012\u000b\u0012\f\u0012\u017c\u0005\u0012\u017f\b\u0012\n\u0012"+
		"\f\u0012\u0182\t\u0012\u0001\u0013\u0001\u0013\u0003\u0013\u0186\b\u0013"+
		"\u0001\u0013\u0001\u0013\u0001\u0014\u0001\u0014\u0003\u0014\u018c\b\u0014"+
		"\u0001\u0014\u0001\u0014\u0001\u0014\u0003\u0014\u0191\b\u0014\u0001\u0014"+
		"\u0000\u0001$\u0015\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014"+
		"\u0016\u0018\u001a\u001c\u001e \"$&(\u0000\u0005\u0001\u0000\u0019\u001a"+
		"\u0001\u0000\u001f#\u0001\u0000-.\u0002\u0000++00\u0001\u00009:\u01cd"+
		"\u0000-\u0001\u0000\u0000\u0000\u00028\u0001\u0000\u0000\u0000\u0004:"+
		"\u0001\u0000\u0000\u0000\u0006A\u0001\u0000\u0000\u0000\bE\u0001\u0000"+
		"\u0000\u0000\nX\u0001\u0000\u0000\u0000\fd\u0001\u0000\u0000\u0000\u000e"+
		"h\u0001\u0000\u0000\u0000\u0010m\u0001\u0000\u0000\u0000\u0012u\u0001"+
		"\u0000\u0000\u0000\u0014\u00c7\u0001\u0000\u0000\u0000\u0016\u00cc\u0001"+
		"\u0000\u0000\u0000\u0018\u00ce\u0001\u0000\u0000\u0000\u001a\u00dd\u0001"+
		"\u0000\u0000\u0000\u001c\u00fa\u0001\u0000\u0000\u0000\u001e\u00fc\u0001"+
		"\u0000\u0000\u0000 \u0100\u0001\u0000\u0000\u0000\"\u0102\u0001\u0000"+
		"\u0000\u0000$\u0155\u0001\u0000\u0000\u0000&\u0183\u0001\u0000\u0000\u0000"+
		"(\u0190\u0001\u0000\u0000\u0000*,\u0003\u0002\u0001\u0000+*\u0001\u0000"+
		"\u0000\u0000,/\u0001\u0000\u0000\u0000-+\u0001\u0000\u0000\u0000-.\u0001"+
		"\u0000\u0000\u0000.\u0001\u0001\u0000\u0000\u0000/-\u0001\u0000\u0000"+
		"\u000009\u0003\u0004\u0002\u000019\u0003\u0006\u0003\u000029\u0003\b\u0004"+
		"\u000039\u0003\n\u0005\u000046\u0003\u0014\n\u000057\u0005\u0001\u0000"+
		"\u000065\u0001\u0000\u0000\u000067\u0001\u0000\u0000\u000079\u0001\u0000"+
		"\u0000\u000080\u0001\u0000\u0000\u000081\u0001\u0000\u0000\u000082\u0001"+
		"\u0000\u0000\u000083\u0001\u0000\u0000\u000084\u0001\u0000\u0000\u0000"+
		"9\u0003\u0001\u0000\u0000\u0000:;\u0005\u0002\u0000\u0000;<\u0005B\u0000"+
		"\u0000<?\u0003 \u0010\u0000=>\u0005\u0003\u0000\u0000>@\u0003$\u0012\u0000"+
		"?=\u0001\u0000\u0000\u0000?@\u0001\u0000\u0000\u0000@\u0005\u0001\u0000"+
		"\u0000\u0000AB\u0005B\u0000\u0000BC\u0005\u0004\u0000\u0000CD\u0003$\u0012"+
		"\u0000D\u0007\u0001\u0000\u0000\u0000EF\u0005\u0005\u0000\u0000FG\u0005"+
		"B\u0000\u0000GI\u0005\u0006\u0000\u0000HJ\u0003\u0010\b\u0000IH\u0001"+
		"\u0000\u0000\u0000IJ\u0001\u0000\u0000\u0000JK\u0001\u0000\u0000\u0000"+
		"KM\u0005\u0007\u0000\u0000LN\u0003 \u0010\u0000ML\u0001\u0000\u0000\u0000"+
		"MN\u0001\u0000\u0000\u0000NO\u0001\u0000\u0000\u0000OS\u0005\b\u0000\u0000"+
		"PR\u0003\u0002\u0001\u0000QP\u0001\u0000\u0000\u0000RU\u0001\u0000\u0000"+
		"\u0000SQ\u0001\u0000\u0000\u0000ST\u0001\u0000\u0000\u0000TV\u0001\u0000"+
		"\u0000\u0000US\u0001\u0000\u0000\u0000VW\u0005\t\u0000\u0000W\t\u0001"+
		"\u0000\u0000\u0000XY\u0005\n\u0000\u0000YZ\u0005B\u0000\u0000Z[\u0005"+
		"\u000b\u0000\u0000[_\u0005\b\u0000\u0000\\^\u0003\f\u0006\u0000]\\\u0001"+
		"\u0000\u0000\u0000^a\u0001\u0000\u0000\u0000_]\u0001\u0000\u0000\u0000"+
		"_`\u0001\u0000\u0000\u0000`b\u0001\u0000\u0000\u0000a_\u0001\u0000\u0000"+
		"\u0000bc\u0005\t\u0000\u0000c\u000b\u0001\u0000\u0000\u0000df\u0003\u000e"+
		"\u0007\u0000eg\u0005\u0001\u0000\u0000fe\u0001\u0000\u0000\u0000fg\u0001"+
		"\u0000\u0000\u0000g\r\u0001\u0000\u0000\u0000hk\u0005B\u0000\u0000il\u0003"+
		" \u0010\u0000jl\u0005B\u0000\u0000ki\u0001\u0000\u0000\u0000kj\u0001\u0000"+
		"\u0000\u0000l\u000f\u0001\u0000\u0000\u0000mr\u0003\u0012\t\u0000no\u0005"+
		"\f\u0000\u0000oq\u0003\u0012\t\u0000pn\u0001\u0000\u0000\u0000qt\u0001"+
		"\u0000\u0000\u0000rp\u0001\u0000\u0000\u0000rs\u0001\u0000\u0000\u0000"+
		"s\u0011\u0001\u0000\u0000\u0000tr\u0001\u0000\u0000\u0000uv\u0005B\u0000"+
		"\u0000vw\u0003 \u0010\u0000w\u0013\u0001\u0000\u0000\u0000x\u00c8\u0003"+
		"$\u0012\u0000yz\u0005\r\u0000\u0000z{\u0003\"\u0011\u0000{|\u0005\u0007"+
		"\u0000\u0000|\u00c8\u0001\u0000\u0000\u0000}\u0081\u0005\b\u0000\u0000"+
		"~\u0080\u0003\u0002\u0001\u0000\u007f~\u0001\u0000\u0000\u0000\u0080\u0083"+
		"\u0001\u0000\u0000\u0000\u0081\u007f\u0001\u0000\u0000\u0000\u0081\u0082"+
		"\u0001\u0000\u0000\u0000\u0082\u0084\u0001\u0000\u0000\u0000\u0083\u0081"+
		"\u0001\u0000\u0000\u0000\u0084\u00c8\u0005\t\u0000\u0000\u0085\u0086\u0005"+
		"\u000e\u0000\u0000\u0086\u0087\u0003$\u0012\u0000\u0087\u008a\u0003\u0014"+
		"\n\u0000\u0088\u0089\u0005\u000f\u0000\u0000\u0089\u008b\u0003\u0014\n"+
		"\u0000\u008a\u0088\u0001\u0000\u0000\u0000\u008a\u008b\u0001\u0000\u0000"+
		"\u0000\u008b\u00c8\u0001\u0000\u0000\u0000\u008c\u008d\u0005\u0010\u0000"+
		"\u0000\u008d\u008e\u0003$\u0012\u0000\u008e\u009a\u0005\b\u0000\u0000"+
		"\u008f\u0090\u0005\u0011\u0000\u0000\u0090\u0091\u0003$\u0012\u0000\u0091"+
		"\u0095\u0005\u0012\u0000\u0000\u0092\u0094\u0003\u0014\n\u0000\u0093\u0092"+
		"\u0001\u0000\u0000\u0000\u0094\u0097\u0001\u0000\u0000\u0000\u0095\u0093"+
		"\u0001\u0000\u0000\u0000\u0095\u0096\u0001\u0000\u0000\u0000\u0096\u0099"+
		"\u0001\u0000\u0000\u0000\u0097\u0095\u0001\u0000\u0000\u0000\u0098\u008f"+
		"\u0001\u0000\u0000\u0000\u0099\u009c\u0001\u0000\u0000\u0000\u009a\u0098"+
		"\u0001\u0000\u0000\u0000\u009a\u009b\u0001\u0000\u0000\u0000\u009b\u00a5"+
		"\u0001\u0000\u0000\u0000\u009c\u009a\u0001\u0000\u0000\u0000\u009d\u009e"+
		"\u0005\u0013\u0000\u0000\u009e\u00a2\u0005\u0012\u0000\u0000\u009f\u00a1"+
		"\u0003\u0014\n\u0000\u00a0\u009f\u0001\u0000\u0000\u0000\u00a1\u00a4\u0001"+
		"\u0000\u0000\u0000\u00a2\u00a0\u0001\u0000\u0000\u0000\u00a2\u00a3\u0001"+
		"\u0000\u0000\u0000\u00a3\u00a6\u0001\u0000\u0000\u0000\u00a4\u00a2\u0001"+
		"\u0000\u0000\u0000\u00a5\u009d\u0001\u0000\u0000\u0000\u00a5\u00a6\u0001"+
		"\u0000\u0000\u0000\u00a6\u00a7\u0001\u0000\u0000\u0000\u00a7\u00a8\u0005"+
		"\t\u0000\u0000\u00a8\u00c8\u0001\u0000\u0000\u0000\u00a9\u00aa\u0005\u0014"+
		"\u0000\u0000\u00aa\u00ab\u0003$\u0012\u0000\u00ab\u00ac\u0003\u0014\n"+
		"\u0000\u00ac\u00c8\u0001\u0000\u0000\u0000\u00ad\u00ae\u0005\u0014\u0000"+
		"\u0000\u00ae\u00af\u0003\u0016\u000b\u0000\u00af\u00b0\u0005\u0001\u0000"+
		"\u0000\u00b0\u00b1\u0003$\u0012\u0000\u00b1\u00b2\u0005\u0001\u0000\u0000"+
		"\u00b2\u00b3\u0003$\u0012\u0000\u00b3\u00b4\u0003\u0014\n\u0000\u00b4"+
		"\u00c8\u0001\u0000\u0000\u0000\u00b5\u00b6\u0005\u0014\u0000\u0000\u00b6"+
		"\u00b7\u0005B\u0000\u0000\u00b7\u00b8\u0005\f\u0000\u0000\u00b8\u00b9"+
		"\u0005B\u0000\u0000\u00b9\u00ba\u0005\u0004\u0000\u0000\u00ba\u00bb\u0005"+
		"\u0015\u0000\u0000\u00bb\u00bc\u0003$\u0012\u0000\u00bc\u00bd\u0003\u0014"+
		"\n\u0000\u00bd\u00c8\u0001\u0000\u0000\u0000\u00be\u00c8\u0003\u0018\f"+
		"\u0000\u00bf\u00c8\u0003\u001a\r\u0000\u00c0\u00c8\u0003\u001c\u000e\u0000"+
		"\u00c1\u00c8\u0005\u0016\u0000\u0000\u00c2\u00c8\u0005\u0017\u0000\u0000"+
		"\u00c3\u00c5\u0005\u0018\u0000\u0000\u00c4\u00c6\u0003$\u0012\u0000\u00c5"+
		"\u00c4\u0001\u0000\u0000\u0000\u00c5\u00c6\u0001\u0000\u0000\u0000\u00c6"+
		"\u00c8\u0001\u0000\u0000\u0000\u00c7x\u0001\u0000\u0000\u0000\u00c7y\u0001"+
		"\u0000\u0000\u0000\u00c7}\u0001\u0000\u0000\u0000\u00c7\u0085\u0001\u0000"+
		"\u0000\u0000\u00c7\u008c\u0001\u0000\u0000\u0000\u00c7\u00a9\u0001\u0000"+
		"\u0000\u0000\u00c7\u00ad\u0001\u0000\u0000\u0000\u00c7\u00b5\u0001\u0000"+
		"\u0000\u0000\u00c7\u00be\u0001\u0000\u0000\u0000\u00c7\u00bf\u0001\u0000"+
		"\u0000\u0000\u00c7\u00c0\u0001\u0000\u0000\u0000\u00c7\u00c1\u0001\u0000"+
		"\u0000\u0000\u00c7\u00c2\u0001\u0000\u0000\u0000\u00c7\u00c3\u0001\u0000"+
		"\u0000\u0000\u00c8\u0015\u0001\u0000\u0000\u0000\u00c9\u00cd\u0003\u0004"+
		"\u0002\u0000\u00ca\u00cd\u0003\u0006\u0003\u0000\u00cb\u00cd\u0003$\u0012"+
		"\u0000\u00cc\u00c9\u0001\u0000\u0000\u0000\u00cc\u00ca\u0001\u0000\u0000"+
		"\u0000\u00cc\u00cb\u0001\u0000\u0000\u0000\u00cd\u0017\u0001\u0000\u0000"+
		"\u0000\u00ce\u00cf\u0005B\u0000\u0000\u00cf\u00d0\u0007\u0000\u0000\u0000"+
		"\u00d0\u0019\u0001\u0000\u0000\u0000\u00d1\u00d2\u0005B\u0000\u0000\u00d2"+
		"\u00d3\u0005\u0004\u0000\u0000\u00d3\u00d4\u0005\u001b\u0000\u0000\u00d4"+
		"\u00d5\u0003 \u0010\u0000\u00d5\u00d6\u0005\b\u0000\u0000\u00d6\u00d7"+
		"\u0003\"\u0011\u0000\u00d7\u00d8\u0005\t\u0000\u0000\u00d8\u00de\u0001"+
		"\u0000\u0000\u0000\u00d9\u00da\u0005\u0002\u0000\u0000\u00da\u00db\u0005"+
		"B\u0000\u0000\u00db\u00dc\u0005\u001b\u0000\u0000\u00dc\u00de\u0003 \u0010"+
		"\u0000\u00dd\u00d1\u0001\u0000\u0000\u0000\u00dd\u00d9\u0001\u0000\u0000"+
		"\u0000\u00de\u001b\u0001\u0000\u0000\u0000\u00df\u00e0\u0005B\u0000\u0000"+
		"\u00e0\u00e1\u0005\u0004\u0000\u0000\u00e1\u00e2\u0005\u001c\u0000\u0000"+
		"\u00e2\u00e3\u0003 \u0010\u0000\u00e3\u00e4\u0005\b\u0000\u0000\u00e4"+
		"\u00e5\u0003\u001e\u000f\u0000\u00e5\u00eb\u0005\f\u0000\u0000\u00e6\u00e7"+
		"\u0003\u001e\u000f\u0000\u00e7\u00e8\u0005\f\u0000\u0000\u00e8\u00ea\u0001"+
		"\u0000\u0000\u0000\u00e9\u00e6\u0001\u0000\u0000\u0000\u00ea\u00ed\u0001"+
		"\u0000\u0000\u0000\u00eb\u00e9\u0001\u0000\u0000\u0000\u00eb\u00ec\u0001"+
		"\u0000\u0000\u0000\u00ec\u00ee\u0001\u0000\u0000\u0000\u00ed\u00eb\u0001"+
		"\u0000\u0000\u0000\u00ee\u00ef\u0005\t\u0000\u0000\u00ef\u00fb\u0001\u0000"+
		"\u0000\u0000\u00f0\u00f1\u0005B\u0000\u0000\u00f1\u00f2\u0005\u001d\u0000"+
		"\u0000\u00f2\u00f3\u0003$\u0012\u0000\u00f3\u00f4\u0005\u001e\u0000\u0000"+
		"\u00f4\u00f5\u0005\u001d\u0000\u0000\u00f5\u00f6\u0003$\u0012\u0000\u00f6"+
		"\u00f7\u0005\u001e\u0000\u0000\u00f7\u00f8\u0005\u0003\u0000\u0000\u00f8"+
		"\u00f9\u0003$\u0012\u0000\u00f9\u00fb\u0001\u0000\u0000\u0000\u00fa\u00df"+
		"\u0001\u0000\u0000\u0000\u00fa\u00f0\u0001\u0000\u0000\u0000\u00fb\u001d"+
		"\u0001\u0000\u0000\u0000\u00fc\u00fd\u0005\b\u0000\u0000\u00fd\u00fe\u0003"+
		"\"\u0011\u0000\u00fe\u00ff\u0005\t\u0000\u0000\u00ff\u001f\u0001\u0000"+
		"\u0000\u0000\u0100\u0101\u0007\u0001\u0000\u0000\u0101!\u0001\u0000\u0000"+
		"\u0000\u0102\u0107\u0003$\u0012\u0000\u0103\u0104\u0005\f\u0000\u0000"+
		"\u0104\u0106\u0003$\u0012\u0000\u0105\u0103\u0001\u0000\u0000\u0000\u0106"+
		"\u0109\u0001\u0000\u0000\u0000\u0107\u0105\u0001\u0000\u0000\u0000\u0107"+
		"\u0108\u0001\u0000\u0000\u0000\u0108#\u0001\u0000\u0000\u0000\u0109\u0107"+
		"\u0001\u0000\u0000\u0000\u010a\u010b\u0006\u0012\uffff\uffff\u0000\u010b"+
		"\u010c\u0005\u0006\u0000\u0000\u010c\u010d\u0003$\u0012\u0000\u010d\u010e"+
		"\u0005\u0007\u0000\u0000\u010e\u0156\u0001\u0000\u0000\u0000\u010f\u0110"+
		"\u0005$\u0000\u0000\u0110\u0156\u0003&\u0013\u0000\u0111\u0112\u0005%"+
		"\u0000\u0000\u0112\u0156\u0003&\u0013\u0000\u0113\u0114\u0005&\u0000\u0000"+
		"\u0114\u0156\u0003&\u0013\u0000\u0115\u0116\u0005\'\u0000\u0000\u0116"+
		"\u0156\u0003&\u0013\u0000\u0117\u0118\u0005(\u0000\u0000\u0118\u0156\u0003"+
		"&\u0013\u0000\u0119\u011a\u0005)\u0000\u0000\u011a\u0156\u0003&\u0013"+
		"\u0000\u011b\u011c\u0005*\u0000\u0000\u011c\u0156\u0003&\u0013\u0000\u011d"+
		"\u011e\u0005+\u0000\u0000\u011e\u0156\u0003$\u0012\u001b\u011f\u0120\u0005"+
		",\u0000\u0000\u0120\u0156\u0003$\u0012\u001a\u0121\u0122\u0005B\u0000"+
		"\u0000\u0122\u0123\u00051\u0000\u0000\u0123\u0156\u0003$\u0012\u0016\u0124"+
		"\u0125\u0005B\u0000\u0000\u0125\u0126\u00052\u0000\u0000\u0126\u0156\u0003"+
		"$\u0012\u0015\u0127\u0128\u0005B\u0000\u0000\u0128\u0129\u0005\u001d\u0000"+
		"\u0000\u0129\u012a\u0003$\u0012\u0000\u012a\u012b\u0005\u001e\u0000\u0000"+
		"\u012b\u012c\u0005\u0003\u0000\u0000\u012c\u012d\u0003$\u0012\f\u012d"+
		"\u0156\u0001\u0000\u0000\u0000\u012e\u012f\u0005B\u0000\u0000\u012f\u0130"+
		"\u0005\u001d\u0000\u0000\u0130\u0131\u0003$\u0012\u0000\u0131\u0132\u0005"+
		"\u001e\u0000\u0000\u0132\u0156\u0001\u0000\u0000\u0000\u0133\u0134\u0005"+
		"B\u0000\u0000\u0134\u0135\u0005\u001d\u0000\u0000\u0135\u0136\u0003$\u0012"+
		"\u0000\u0136\u0137\u0005\u001e\u0000\u0000\u0137\u0138\u0005\u001d\u0000"+
		"\u0000\u0138\u0139\u0003$\u0012\u0000\u0139\u013a\u0005\u001e\u0000\u0000"+
		"\u013a\u0156\u0001\u0000\u0000\u0000\u013b\u0156\u0005<\u0000\u0000\u013c"+
		"\u0156\u0005=\u0000\u0000\u013d\u0156\u0005>\u0000\u0000\u013e\u0156\u0005"+
		"?\u0000\u0000\u013f\u0156\u0005@\u0000\u0000\u0140\u0156\u0005A\u0000"+
		"\u0000\u0141\u0156\u0005B\u0000\u0000\u0142\u0156\u0003\u0018\f\u0000"+
		"\u0143\u0144\u0005B\u0000\u0000\u0144\u0145\u0005\b\u0000\u0000\u0145"+
		"\u0146\u0005B\u0000\u0000\u0146\u0147\u0005\u0012\u0000\u0000\u0147\u0148"+
		"\u0003$\u0012\u0000\u0148\u0150\u0005\f\u0000\u0000\u0149\u014a\u0005"+
		"B\u0000\u0000\u014a\u014b\u0005\u0012\u0000\u0000\u014b\u014c\u0003$\u0012"+
		"\u0000\u014c\u014d\u0005\f\u0000\u0000\u014d\u014f\u0001\u0000\u0000\u0000"+
		"\u014e\u0149\u0001\u0000\u0000\u0000\u014f\u0152\u0001\u0000\u0000\u0000"+
		"\u0150\u014e\u0001\u0000\u0000\u0000\u0150\u0151\u0001\u0000\u0000\u0000"+
		"\u0151\u0153\u0001\u0000\u0000\u0000\u0152\u0150\u0001\u0000\u0000\u0000"+
		"\u0153\u0154\u0005\t\u0000\u0000\u0154\u0156\u0001\u0000\u0000\u0000\u0155"+
		"\u010a\u0001\u0000\u0000\u0000\u0155\u010f\u0001\u0000\u0000\u0000\u0155"+
		"\u0111\u0001\u0000\u0000\u0000\u0155\u0113\u0001\u0000\u0000\u0000\u0155"+
		"\u0115\u0001\u0000\u0000\u0000\u0155\u0117\u0001\u0000\u0000\u0000\u0155"+
		"\u0119\u0001\u0000\u0000\u0000\u0155\u011b\u0001\u0000\u0000\u0000\u0155"+
		"\u011d\u0001\u0000\u0000\u0000\u0155\u011f\u0001\u0000\u0000\u0000\u0155"+
		"\u0121\u0001\u0000\u0000\u0000\u0155\u0124\u0001\u0000\u0000\u0000\u0155"+
		"\u0127\u0001\u0000\u0000\u0000\u0155\u012e\u0001\u0000\u0000\u0000\u0155"+
		"\u0133\u0001\u0000\u0000\u0000\u0155\u013b\u0001\u0000\u0000\u0000\u0155"+
		"\u013c\u0001\u0000\u0000\u0000\u0155\u013d\u0001\u0000\u0000\u0000\u0155"+
		"\u013e\u0001\u0000\u0000\u0000\u0155\u013f\u0001\u0000\u0000\u0000\u0155"+
		"\u0140\u0001\u0000\u0000\u0000\u0155\u0141\u0001\u0000\u0000\u0000\u0155"+
		"\u0142\u0001\u0000\u0000\u0000\u0155\u0143\u0001\u0000\u0000\u0000\u0156"+
		"\u0180\u0001\u0000\u0000\u0000\u0157\u0158\n\u0019\u0000\u0000\u0158\u0159"+
		"\u0007\u0002\u0000\u0000\u0159\u017f\u0003$\u0012\u001a\u015a\u015b\n"+
		"\u0018\u0000\u0000\u015b\u015c\u0005/\u0000\u0000\u015c\u017f\u0003$\u0012"+
		"\u0019\u015d\u015e\n\u0017\u0000\u0000\u015e\u015f\u0007\u0003\u0000\u0000"+
		"\u015f\u017f\u0003$\u0012\u0018\u0160\u0161\n\u0014\u0000\u0000\u0161"+
		"\u0162\u00053\u0000\u0000\u0162\u017f\u0003$\u0012\u0015\u0163\u0164\n"+
		"\u0013\u0000\u0000\u0164\u0165\u00054\u0000\u0000\u0165\u017f\u0003$\u0012"+
		"\u0014\u0166\u0167\n\u0012\u0000\u0000\u0167\u0168\u00055\u0000\u0000"+
		"\u0168\u017f\u0003$\u0012\u0013\u0169\u016a\n\u0011\u0000\u0000\u016a"+
		"\u016b\u00056\u0000\u0000\u016b\u017f\u0003$\u0012\u0012\u016c\u016d\n"+
		"\u0010\u0000\u0000\u016d\u016e\u00057\u0000\u0000\u016e\u017f\u0003$\u0012"+
		"\u0011\u016f\u0170\n\u000f\u0000\u0000\u0170\u0171\u00058\u0000\u0000"+
		"\u0171\u017f\u0003$\u0012\u0010\u0172\u0173\n\u000e\u0000\u0000\u0173"+
		"\u0174\u0007\u0004\u0000\u0000\u0174\u017f\u0003$\u0012\u000f\u0175\u0176"+
		"\n\r\u0000\u0000\u0176\u0177\u0005\u0003\u0000\u0000\u0177\u017f\u0003"+
		"$\u0012\u000e\u0178\u017a\n\u001c\u0000\u0000\u0179\u017b\u0003(\u0014"+
		"\u0000\u017a\u0179\u0001\u0000\u0000\u0000\u017b\u017c\u0001\u0000\u0000"+
		"\u0000\u017c\u017a\u0001\u0000\u0000\u0000\u017c\u017d\u0001\u0000\u0000"+
		"\u0000\u017d\u017f\u0001\u0000\u0000\u0000\u017e\u0157\u0001\u0000\u0000"+
		"\u0000\u017e\u015a\u0001\u0000\u0000\u0000\u017e\u015d\u0001\u0000\u0000"+
		"\u0000\u017e\u0160\u0001\u0000\u0000\u0000\u017e\u0163\u0001\u0000\u0000"+
		"\u0000\u017e\u0166\u0001\u0000\u0000\u0000\u017e\u0169\u0001\u0000\u0000"+
		"\u0000\u017e\u016c\u0001\u0000\u0000\u0000\u017e\u016f\u0001\u0000\u0000"+
		"\u0000\u017e\u0172\u0001\u0000\u0000\u0000\u017e\u0175\u0001\u0000\u0000"+
		"\u0000\u017e\u0178\u0001\u0000\u0000\u0000\u017f\u0182\u0001\u0000\u0000"+
		"\u0000\u0180\u017e\u0001\u0000\u0000\u0000\u0180\u0181\u0001\u0000\u0000"+
		"\u0000\u0181%\u0001\u0000\u0000\u0000\u0182\u0180\u0001\u0000\u0000\u0000"+
		"\u0183\u0185\u0005\u0006\u0000\u0000\u0184\u0186\u0003\"\u0011\u0000\u0185"+
		"\u0184\u0001\u0000\u0000\u0000\u0185\u0186\u0001\u0000\u0000\u0000\u0186"+
		"\u0187\u0001\u0000\u0000\u0000\u0187\u0188\u0005\u0007\u0000\u0000\u0188"+
		"\'\u0001\u0000\u0000\u0000\u0189\u018b\u0005\u0006\u0000\u0000\u018a\u018c"+
		"\u0003\"\u0011\u0000\u018b\u018a\u0001\u0000\u0000\u0000\u018b\u018c\u0001"+
		"\u0000\u0000\u0000\u018c\u018d\u0001\u0000\u0000\u0000\u018d\u0191\u0005"+
		"\u0007\u0000\u0000\u018e\u018f\u0005;\u0000\u0000\u018f\u0191\u0005B\u0000"+
		"\u0000\u0190\u0189\u0001\u0000\u0000\u0000\u0190\u018e\u0001\u0000\u0000"+
		"\u0000\u0191)\u0001\u0000\u0000\u0000 -68?IMS_fkr\u0081\u008a\u0095\u009a"+
		"\u00a2\u00a5\u00c5\u00c7\u00cc\u00dd\u00eb\u00fa\u0107\u0150\u0155\u017c"+
		"\u017e\u0180\u0185\u018b\u0190";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}