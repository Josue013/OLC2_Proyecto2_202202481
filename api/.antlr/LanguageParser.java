// Generated from /media/josue/Elements/bato/p/OLC2_Proyecto2_202202481/api/Language.g4 by ANTLR 4.13.1
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
		RULE_stmt = 9, RULE_forInit = 10, RULE_incdec = 11, RULE_slice1 = 12, 
		RULE_slice2 = 13, RULE_arrayContent = 14, RULE_type = 15, RULE_exprList = 16, 
		RULE_expr = 17, RULE_callEmbebida = 18, RULE_call = 19;
	private static String[] makeRuleNames() {
		return new String[] {
			"program", "dcl", "varDcl", "varDcl2", "funcDCl", "structDcl", "structBody", 
			"varDCLstruct", "params", "stmt", "forInit", "incdec", "slice1", "slice2", 
			"arrayContent", "type", "exprList", "expr", "callEmbebida", "call"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "';'", "'var'", "'='", "':='", "'func'", "'('", "')'", "'{'", "'}'", 
			"'type'", "'struct'", "','", "'fmt.Println('", "'if'", "'else'", "'switch'", 
			"'case'", "':'", "'default'", "'for'", "'range'", "'break'", "'continue'", 
			"'return'", "'++'", "'--'", "'[]'", "'['", "']'", "'[][]'", "'int'", 
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
			setState(43);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -1152886388923734684L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 7L) != 0)) {
				{
				{
				setState(40);
				dcl();
				}
				}
				setState(45);
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
			setState(54);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(46);
				varDcl();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(47);
				varDcl2();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(48);
				funcDCl();
				}
				break;
			case 4:
				enterOuterAlt(_localctx, 4);
				{
				setState(49);
				structDcl();
				}
				break;
			case 5:
				enterOuterAlt(_localctx, 5);
				{
				setState(50);
				stmt();
				setState(52);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__0) {
					{
					setState(51);
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
			setState(56);
			match(T__1);
			setState(57);
			match(ID);
			setState(58);
			type();
			setState(61);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__2) {
				{
				setState(59);
				match(T__2);
				setState(60);
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
			setState(63);
			match(ID);
			setState(64);
			match(T__3);
			setState(65);
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
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
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
			setState(67);
			match(T__4);
			setState(72);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__5) {
				{
				setState(68);
				match(T__5);
				setState(69);
				match(ID);
				setState(70);
				match(ID);
				setState(71);
				match(T__6);
				}
			}

			setState(74);
			match(ID);
			setState(75);
			match(T__5);
			setState(77);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ID) {
				{
				setState(76);
				params();
				}
			}

			setState(79);
			match(T__6);
			setState(81);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 66571993088L) != 0)) {
				{
				setState(80);
				type();
				}
			}

			setState(83);
			match(T__7);
			setState(87);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -1152886388923734684L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 7L) != 0)) {
				{
				{
				setState(84);
				dcl();
				}
				}
				setState(89);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(90);
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
			setState(92);
			match(T__9);
			setState(93);
			match(ID);
			setState(94);
			match(T__10);
			setState(95);
			match(T__7);
			setState(99);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==ID) {
				{
				{
				setState(96);
				structBody();
				}
				}
				setState(101);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(102);
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
			setState(104);
			varDCLstruct();
			setState(106);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__0) {
				{
				setState(105);
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
			setState(108);
			match(ID);
			setState(111);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__30:
			case T__31:
			case T__32:
			case T__33:
			case T__34:
				{
				setState(109);
				type();
				}
				break;
			case ID:
				{
				setState(110);
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
		public List<TerminalNode> ID() { return getTokens(LanguageParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(LanguageParser.ID, i);
		}
		public List<TypeContext> type() {
			return getRuleContexts(TypeContext.class);
		}
		public TypeContext type(int i) {
			return getRuleContext(TypeContext.class,i);
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
			setState(113);
			match(ID);
			setState(114);
			type();
			setState(120);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__11) {
				{
				{
				setState(115);
				match(T__11);
				setState(116);
				match(ID);
				setState(117);
				type();
				}
				}
				setState(122);
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
		enterRule(_localctx, 18, RULE_stmt);
		int _la;
		try {
			setState(202);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
			case 1:
				_localctx = new ExprStmtContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(123);
				expr(0);
				}
				break;
			case 2:
				_localctx = new PrintStmtContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(124);
				match(T__12);
				setState(125);
				exprList();
				setState(126);
				match(T__6);
				}
				break;
			case 3:
				_localctx = new BlockStmtContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(128);
				match(T__7);
				setState(132);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -1152886388923734684L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 7L) != 0)) {
					{
					{
					setState(129);
					dcl();
					}
					}
					setState(134);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(135);
				match(T__8);
				}
				break;
			case 4:
				_localctx = new IfStmtContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(136);
				match(T__13);
				setState(137);
				expr(0);
				setState(138);
				stmt();
				setState(141);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,13,_ctx) ) {
				case 1:
					{
					setState(139);
					match(T__14);
					setState(140);
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
				setState(143);
				match(T__15);
				setState(144);
				expr(0);
				setState(145);
				match(T__7);
				setState(157);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__16) {
					{
					{
					setState(146);
					match(T__16);
					setState(147);
					expr(0);
					setState(148);
					match(T__17);
					setState(152);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -1152886388923735740L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 7L) != 0)) {
						{
						{
						setState(149);
						stmt();
						}
						}
						setState(154);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					}
					}
					setState(159);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(168);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__18) {
					{
					setState(160);
					match(T__18);
					setState(161);
					match(T__17);
					setState(165);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while ((((_la) & ~0x3f) == 0 && ((1L << _la) & -1152886388923735740L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 7L) != 0)) {
						{
						{
						setState(162);
						stmt();
						}
						}
						setState(167);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					}
				}

				setState(170);
				match(T__8);
				}
				break;
			case 6:
				_localctx = new ForWhileStmtContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(172);
				match(T__19);
				setState(173);
				expr(0);
				setState(174);
				stmt();
				}
				break;
			case 7:
				_localctx = new ForClassicStmtContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(176);
				match(T__19);
				setState(177);
				forInit();
				setState(178);
				match(T__0);
				setState(179);
				expr(0);
				setState(180);
				match(T__0);
				setState(181);
				expr(0);
				setState(182);
				stmt();
				}
				break;
			case 8:
				_localctx = new ForRangeStmtContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(184);
				match(T__19);
				setState(185);
				match(ID);
				setState(186);
				match(T__11);
				setState(187);
				match(ID);
				setState(188);
				match(T__3);
				setState(189);
				match(T__20);
				setState(190);
				expr(0);
				setState(191);
				stmt();
				}
				break;
			case 9:
				_localctx = new IncDecStmtContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(193);
				incdec();
				}
				break;
			case 10:
				_localctx = new Slice1xdContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(194);
				slice1();
				}
				break;
			case 11:
				_localctx = new Slice2xdContext(_localctx);
				enterOuterAlt(_localctx, 11);
				{
				setState(195);
				slice2();
				}
				break;
			case 12:
				_localctx = new BreakStmtContext(_localctx);
				enterOuterAlt(_localctx, 12);
				{
				setState(196);
				match(T__21);
				}
				break;
			case 13:
				_localctx = new ContinueStmtContext(_localctx);
				enterOuterAlt(_localctx, 13);
				{
				setState(197);
				match(T__22);
				}
				break;
			case 14:
				_localctx = new ReturnStmtContext(_localctx);
				enterOuterAlt(_localctx, 14);
				{
				setState(198);
				match(T__23);
				setState(200);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,18,_ctx) ) {
				case 1:
					{
					setState(199);
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
		enterRule(_localctx, 20, RULE_forInit);
		try {
			setState(206);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__1:
				enterOuterAlt(_localctx, 1);
				{
				setState(204);
				varDcl();
				}
				break;
			case T__5:
			case T__35:
			case T__36:
			case T__37:
			case T__38:
			case T__39:
			case T__40:
			case T__41:
			case T__42:
			case T__43:
			case INT:
			case DECIMAL:
			case RUNE:
			case STRING:
			case BOOL:
			case NIL:
			case ID:
				enterOuterAlt(_localctx, 2);
				{
				setState(205);
				expr(0);
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
		enterRule(_localctx, 22, RULE_incdec);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(208);
			match(ID);
			setState(209);
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
	public static class Slice3StmtContext extends Slice1Context {
		public TerminalNode ID() { return getToken(LanguageParser.ID, 0); }
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public Slice3StmtContext(Slice1Context ctx) { copyFrom(ctx); }
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
		enterRule(_localctx, 24, RULE_slice1);
		try {
			setState(230);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,21,_ctx) ) {
			case 1:
				_localctx = new Slice1StmtContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(211);
				match(ID);
				setState(212);
				match(T__3);
				setState(213);
				match(T__26);
				setState(214);
				type();
				setState(215);
				match(T__7);
				setState(216);
				exprList();
				setState(217);
				match(T__8);
				}
				break;
			case 2:
				_localctx = new Slice2StmtContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(219);
				match(T__1);
				setState(220);
				match(ID);
				setState(221);
				match(T__26);
				setState(222);
				type();
				}
				break;
			case 3:
				_localctx = new Slice3StmtContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(223);
				match(ID);
				setState(224);
				match(T__27);
				setState(225);
				expr(0);
				setState(226);
				match(T__28);
				setState(227);
				match(T__2);
				setState(228);
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
		enterRule(_localctx, 26, RULE_slice2);
		int _la;
		try {
			setState(259);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,23,_ctx) ) {
			case 1:
				_localctx = new Slice4StmtContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(232);
				match(ID);
				setState(233);
				match(T__3);
				setState(234);
				match(T__29);
				setState(235);
				type();
				setState(236);
				match(T__7);
				setState(237);
				arrayContent();
				setState(238);
				match(T__11);
				setState(244);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__7) {
					{
					{
					setState(239);
					arrayContent();
					setState(240);
					match(T__11);
					}
					}
					setState(246);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(247);
				match(T__8);
				}
				break;
			case 2:
				_localctx = new Slice5StmtContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(249);
				match(ID);
				setState(250);
				match(T__27);
				setState(251);
				expr(0);
				setState(252);
				match(T__28);
				setState(253);
				match(T__27);
				setState(254);
				expr(0);
				setState(255);
				match(T__28);
				setState(256);
				match(T__2);
				setState(257);
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
		enterRule(_localctx, 28, RULE_arrayContent);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(261);
			match(T__7);
			setState(262);
			exprList();
			setState(263);
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
		enterRule(_localctx, 30, RULE_type);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(265);
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
		enterRule(_localctx, 32, RULE_exprList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(267);
			expr(0);
			setState(272);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__11) {
				{
				{
				setState(268);
				match(T__11);
				setState(269);
				expr(0);
				}
				}
				setState(274);
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
		int _startState = 34;
		enterRecursionRule(_localctx, 34, RULE_expr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(343);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,26,_ctx) ) {
			case 1:
				{
				_localctx = new ParensContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(276);
				match(T__5);
				setState(277);
				expr(0);
				setState(278);
				match(T__6);
				}
				break;
			case 2:
				{
				_localctx = new AtoiCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(280);
				match(T__35);
				setState(281);
				callEmbebida();
				}
				break;
			case 3:
				{
				_localctx = new ParseFloatCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(282);
				match(T__36);
				setState(283);
				callEmbebida();
				}
				break;
			case 4:
				{
				_localctx = new TypeOfCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(284);
				match(T__37);
				setState(285);
				callEmbebida();
				}
				break;
			case 5:
				{
				_localctx = new IndexCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(286);
				match(T__38);
				setState(287);
				callEmbebida();
				}
				break;
			case 6:
				{
				_localctx = new JoinCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(288);
				match(T__39);
				setState(289);
				callEmbebida();
				}
				break;
			case 7:
				{
				_localctx = new LenCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(290);
				match(T__40);
				setState(291);
				callEmbebida();
				}
				break;
			case 8:
				{
				_localctx = new AppendCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(292);
				match(T__41);
				setState(293);
				callEmbebida();
				}
				break;
			case 9:
				{
				_localctx = new NegateContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(294);
				match(T__42);
				setState(295);
				expr(26);
				}
				break;
			case 10:
				{
				_localctx = new NotContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(296);
				match(T__43);
				setState(297);
				expr(25);
				}
				break;
			case 11:
				{
				_localctx = new AddAssignContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(298);
				match(ID);
				setState(299);
				match(T__48);
				setState(300);
				expr(21);
				}
				break;
			case 12:
				{
				_localctx = new SubAssignContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(301);
				match(ID);
				setState(302);
				match(T__49);
				setState(303);
				expr(20);
				}
				break;
			case 13:
				{
				_localctx = new Slice6StmtContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(304);
				match(ID);
				setState(305);
				match(T__27);
				setState(306);
				expr(0);
				setState(307);
				match(T__28);
				}
				break;
			case 14:
				{
				_localctx = new Slice7StmtContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(309);
				match(ID);
				setState(310);
				match(T__27);
				setState(311);
				expr(0);
				setState(312);
				match(T__28);
				setState(313);
				match(T__27);
				setState(314);
				expr(0);
				setState(315);
				match(T__28);
				}
				break;
			case 15:
				{
				_localctx = new IntContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(317);
				match(INT);
				}
				break;
			case 16:
				{
				_localctx = new DecimalContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(318);
				match(DECIMAL);
				}
				break;
			case 17:
				{
				_localctx = new RuneContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(319);
				match(RUNE);
				}
				break;
			case 18:
				{
				_localctx = new StringContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(320);
				match(STRING);
				}
				break;
			case 19:
				{
				_localctx = new BoolContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(321);
				match(BOOL);
				}
				break;
			case 20:
				{
				_localctx = new NilContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(322);
				match(NIL);
				}
				break;
			case 21:
				{
				_localctx = new IdentifierContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(323);
				match(ID);
				}
				break;
			case 22:
				{
				_localctx = new IncDecExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(324);
				incdec();
				}
				break;
			case 23:
				{
				_localctx = new StructInstContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(325);
				match(ID);
				setState(326);
				match(T__7);
				setState(327);
				match(ID);
				setState(328);
				match(T__17);
				setState(329);
				expr(0);
				setState(330);
				match(T__11);
				setState(338);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==ID) {
					{
					{
					setState(331);
					match(ID);
					setState(332);
					match(T__17);
					setState(333);
					expr(0);
					setState(334);
					match(T__11);
					}
					}
					setState(340);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(341);
				match(T__8);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(386);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(384);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,28,_ctx) ) {
					case 1:
						{
						_localctx = new MulDivContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(345);
						if (!(precpred(_ctx, 24))) throw new FailedPredicateException(this, "precpred(_ctx, 24)");
						setState(346);
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
						setState(347);
						expr(25);
						}
						break;
					case 2:
						{
						_localctx = new ModContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(348);
						if (!(precpred(_ctx, 23))) throw new FailedPredicateException(this, "precpred(_ctx, 23)");
						setState(349);
						match(T__46);
						setState(350);
						expr(24);
						}
						break;
					case 3:
						{
						_localctx = new AddSubContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(351);
						if (!(precpred(_ctx, 22))) throw new FailedPredicateException(this, "precpred(_ctx, 22)");
						setState(352);
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
						setState(353);
						expr(23);
						}
						break;
					case 4:
						{
						_localctx = new RelationalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(354);
						if (!(precpred(_ctx, 19))) throw new FailedPredicateException(this, "precpred(_ctx, 19)");
						setState(355);
						((RelationalContext)_localctx).op = match(T__50);
						setState(356);
						expr(20);
						}
						break;
					case 5:
						{
						_localctx = new RelationalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(357);
						if (!(precpred(_ctx, 18))) throw new FailedPredicateException(this, "precpred(_ctx, 18)");
						setState(358);
						((RelationalContext)_localctx).op = match(T__51);
						setState(359);
						expr(19);
						}
						break;
					case 6:
						{
						_localctx = new RelationalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(360);
						if (!(precpred(_ctx, 17))) throw new FailedPredicateException(this, "precpred(_ctx, 17)");
						setState(361);
						((RelationalContext)_localctx).op = match(T__52);
						setState(362);
						expr(18);
						}
						break;
					case 7:
						{
						_localctx = new RelationalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(363);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(364);
						((RelationalContext)_localctx).op = match(T__53);
						setState(365);
						expr(17);
						}
						break;
					case 8:
						{
						_localctx = new RelationalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(366);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(367);
						((RelationalContext)_localctx).op = match(T__54);
						setState(368);
						expr(16);
						}
						break;
					case 9:
						{
						_localctx = new RelationalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(369);
						if (!(precpred(_ctx, 14))) throw new FailedPredicateException(this, "precpred(_ctx, 14)");
						setState(370);
						((RelationalContext)_localctx).op = match(T__55);
						setState(371);
						expr(15);
						}
						break;
					case 10:
						{
						_localctx = new LogicalContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(372);
						if (!(precpred(_ctx, 13))) throw new FailedPredicateException(this, "precpred(_ctx, 13)");
						setState(373);
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
						setState(374);
						expr(14);
						}
						break;
					case 11:
						{
						_localctx = new AssignContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(375);
						if (!(precpred(_ctx, 12))) throw new FailedPredicateException(this, "precpred(_ctx, 12)");
						setState(376);
						match(T__2);
						setState(377);
						expr(13);
						}
						break;
					case 12:
						{
						_localctx = new CallExprContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(378);
						if (!(precpred(_ctx, 27))) throw new FailedPredicateException(this, "precpred(_ctx, 27)");
						setState(380); 
						_errHandler.sync(this);
						_alt = 1;
						do {
							switch (_alt) {
							case 1:
								{
								{
								setState(379);
								call();
								}
								}
								break;
							default:
								throw new NoViableAltException(this);
							}
							setState(382); 
							_errHandler.sync(this);
							_alt = getInterpreter().adaptivePredict(_input,27,_ctx);
						} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
						}
						break;
					}
					} 
				}
				setState(388);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
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
		enterRule(_localctx, 36, RULE_callEmbebida);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(389);
			match(T__5);
			setState(391);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (((((_la - 6)) & ~0x3f) == 0 && ((1L << (_la - 6)) & 2287829159386284033L) != 0)) {
				{
				setState(390);
				exprList();
				}
			}

			setState(393);
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
		enterRule(_localctx, 38, RULE_call);
		int _la;
		try {
			setState(402);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__5:
				_localctx = new FuncCallContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(395);
				match(T__5);
				setState(397);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (((((_la - 6)) & ~0x3f) == 0 && ((1L << (_la - 6)) & 2287829159386284033L) != 0)) {
					{
					setState(396);
					exprList();
					}
				}

				setState(399);
				match(T__6);
				}
				break;
			case T__58:
				_localctx = new GetContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(400);
				match(T__58);
				setState(401);
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
		case 17:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 24);
		case 1:
			return precpred(_ctx, 23);
		case 2:
			return precpred(_ctx, 22);
		case 3:
			return precpred(_ctx, 19);
		case 4:
			return precpred(_ctx, 18);
		case 5:
			return precpred(_ctx, 17);
		case 6:
			return precpred(_ctx, 16);
		case 7:
			return precpred(_ctx, 15);
		case 8:
			return precpred(_ctx, 14);
		case 9:
			return precpred(_ctx, 13);
		case 10:
			return precpred(_ctx, 12);
		case 11:
			return precpred(_ctx, 27);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001E\u0195\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002\u0012\u0007\u0012"+
		"\u0002\u0013\u0007\u0013\u0001\u0000\u0005\u0000*\b\u0000\n\u0000\f\u0000"+
		"-\t\u0000\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001\u0001"+
		"\u0001\u0001\u0003\u00015\b\u0001\u0003\u00017\b\u0001\u0001\u0002\u0001"+
		"\u0002\u0001\u0002\u0001\u0002\u0001\u0002\u0003\u0002>\b\u0002\u0001"+
		"\u0003\u0001\u0003\u0001\u0003\u0001\u0003\u0001\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0004\u0001\u0004\u0003\u0004I\b\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0004\u0003\u0004N\b\u0004\u0001\u0004\u0001\u0004\u0003"+
		"\u0004R\b\u0004\u0001\u0004\u0001\u0004\u0005\u0004V\b\u0004\n\u0004\f"+
		"\u0004Y\t\u0004\u0001\u0004\u0001\u0004\u0001\u0005\u0001\u0005\u0001"+
		"\u0005\u0001\u0005\u0001\u0005\u0005\u0005b\b\u0005\n\u0005\f\u0005e\t"+
		"\u0005\u0001\u0005\u0001\u0005\u0001\u0006\u0001\u0006\u0003\u0006k\b"+
		"\u0006\u0001\u0007\u0001\u0007\u0001\u0007\u0003\u0007p\b\u0007\u0001"+
		"\b\u0001\b\u0001\b\u0001\b\u0001\b\u0005\bw\b\b\n\b\f\bz\t\b\u0001\t\u0001"+
		"\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0005\t\u0083\b\t\n\t\f\t\u0086"+
		"\t\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0003\t\u008e\b\t"+
		"\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0005\t\u0097"+
		"\b\t\n\t\f\t\u009a\t\t\u0005\t\u009c\b\t\n\t\f\t\u009f\t\t\u0001\t\u0001"+
		"\t\u0001\t\u0005\t\u00a4\b\t\n\t\f\t\u00a7\t\t\u0003\t\u00a9\b\t\u0001"+
		"\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001"+
		"\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001"+
		"\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001\t\u0001"+
		"\t\u0001\t\u0001\t\u0003\t\u00c9\b\t\u0003\t\u00cb\b\t\u0001\n\u0001\n"+
		"\u0003\n\u00cf\b\n\u0001\u000b\u0001\u000b\u0001\u000b\u0001\f\u0001\f"+
		"\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001"+
		"\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0003"+
		"\f\u00e7\b\f\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0001\r\u0001\r\u0005\r\u00f3\b\r\n\r\f\r\u00f6\t\r\u0001\r\u0001\r"+
		"\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0001\r\u0003\r\u0104\b\r\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000f\u0001\u000f\u0001\u0010\u0001\u0010\u0001\u0010\u0005"+
		"\u0010\u010f\b\u0010\n\u0010\f\u0010\u0112\t\u0010\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0005\u0011"+
		"\u0151\b\u0011\n\u0011\f\u0011\u0154\t\u0011\u0001\u0011\u0001\u0011\u0003"+
		"\u0011\u0158\b\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0004\u0011\u017d\b\u0011\u000b\u0011\f\u0011\u017e\u0005\u0011"+
		"\u0181\b\u0011\n\u0011\f\u0011\u0184\t\u0011\u0001\u0012\u0001\u0012\u0003"+
		"\u0012\u0188\b\u0012\u0001\u0012\u0001\u0012\u0001\u0013\u0001\u0013\u0003"+
		"\u0013\u018e\b\u0013\u0001\u0013\u0001\u0013\u0001\u0013\u0003\u0013\u0193"+
		"\b\u0013\u0001\u0013\u0000\u0001\"\u0014\u0000\u0002\u0004\u0006\b\n\f"+
		"\u000e\u0010\u0012\u0014\u0016\u0018\u001a\u001c\u001e \"$&\u0000\u0005"+
		"\u0001\u0000\u0019\u001a\u0001\u0000\u001f#\u0001\u0000-.\u0002\u0000"+
		"++00\u0001\u00009:\u01d0\u0000+\u0001\u0000\u0000\u0000\u00026\u0001\u0000"+
		"\u0000\u0000\u00048\u0001\u0000\u0000\u0000\u0006?\u0001\u0000\u0000\u0000"+
		"\bC\u0001\u0000\u0000\u0000\n\\\u0001\u0000\u0000\u0000\fh\u0001\u0000"+
		"\u0000\u0000\u000el\u0001\u0000\u0000\u0000\u0010q\u0001\u0000\u0000\u0000"+
		"\u0012\u00ca\u0001\u0000\u0000\u0000\u0014\u00ce\u0001\u0000\u0000\u0000"+
		"\u0016\u00d0\u0001\u0000\u0000\u0000\u0018\u00e6\u0001\u0000\u0000\u0000"+
		"\u001a\u0103\u0001\u0000\u0000\u0000\u001c\u0105\u0001\u0000\u0000\u0000"+
		"\u001e\u0109\u0001\u0000\u0000\u0000 \u010b\u0001\u0000\u0000\u0000\""+
		"\u0157\u0001\u0000\u0000\u0000$\u0185\u0001\u0000\u0000\u0000&\u0192\u0001"+
		"\u0000\u0000\u0000(*\u0003\u0002\u0001\u0000)(\u0001\u0000\u0000\u0000"+
		"*-\u0001\u0000\u0000\u0000+)\u0001\u0000\u0000\u0000+,\u0001\u0000\u0000"+
		"\u0000,\u0001\u0001\u0000\u0000\u0000-+\u0001\u0000\u0000\u0000.7\u0003"+
		"\u0004\u0002\u0000/7\u0003\u0006\u0003\u000007\u0003\b\u0004\u000017\u0003"+
		"\n\u0005\u000024\u0003\u0012\t\u000035\u0005\u0001\u0000\u000043\u0001"+
		"\u0000\u0000\u000045\u0001\u0000\u0000\u000057\u0001\u0000\u0000\u0000"+
		"6.\u0001\u0000\u0000\u00006/\u0001\u0000\u0000\u000060\u0001\u0000\u0000"+
		"\u000061\u0001\u0000\u0000\u000062\u0001\u0000\u0000\u00007\u0003\u0001"+
		"\u0000\u0000\u000089\u0005\u0002\u0000\u00009:\u0005B\u0000\u0000:=\u0003"+
		"\u001e\u000f\u0000;<\u0005\u0003\u0000\u0000<>\u0003\"\u0011\u0000=;\u0001"+
		"\u0000\u0000\u0000=>\u0001\u0000\u0000\u0000>\u0005\u0001\u0000\u0000"+
		"\u0000?@\u0005B\u0000\u0000@A\u0005\u0004\u0000\u0000AB\u0003\"\u0011"+
		"\u0000B\u0007\u0001\u0000\u0000\u0000CH\u0005\u0005\u0000\u0000DE\u0005"+
		"\u0006\u0000\u0000EF\u0005B\u0000\u0000FG\u0005B\u0000\u0000GI\u0005\u0007"+
		"\u0000\u0000HD\u0001\u0000\u0000\u0000HI\u0001\u0000\u0000\u0000IJ\u0001"+
		"\u0000\u0000\u0000JK\u0005B\u0000\u0000KM\u0005\u0006\u0000\u0000LN\u0003"+
		"\u0010\b\u0000ML\u0001\u0000\u0000\u0000MN\u0001\u0000\u0000\u0000NO\u0001"+
		"\u0000\u0000\u0000OQ\u0005\u0007\u0000\u0000PR\u0003\u001e\u000f\u0000"+
		"QP\u0001\u0000\u0000\u0000QR\u0001\u0000\u0000\u0000RS\u0001\u0000\u0000"+
		"\u0000SW\u0005\b\u0000\u0000TV\u0003\u0002\u0001\u0000UT\u0001\u0000\u0000"+
		"\u0000VY\u0001\u0000\u0000\u0000WU\u0001\u0000\u0000\u0000WX\u0001\u0000"+
		"\u0000\u0000XZ\u0001\u0000\u0000\u0000YW\u0001\u0000\u0000\u0000Z[\u0005"+
		"\t\u0000\u0000[\t\u0001\u0000\u0000\u0000\\]\u0005\n\u0000\u0000]^\u0005"+
		"B\u0000\u0000^_\u0005\u000b\u0000\u0000_c\u0005\b\u0000\u0000`b\u0003"+
		"\f\u0006\u0000a`\u0001\u0000\u0000\u0000be\u0001\u0000\u0000\u0000ca\u0001"+
		"\u0000\u0000\u0000cd\u0001\u0000\u0000\u0000df\u0001\u0000\u0000\u0000"+
		"ec\u0001\u0000\u0000\u0000fg\u0005\t\u0000\u0000g\u000b\u0001\u0000\u0000"+
		"\u0000hj\u0003\u000e\u0007\u0000ik\u0005\u0001\u0000\u0000ji\u0001\u0000"+
		"\u0000\u0000jk\u0001\u0000\u0000\u0000k\r\u0001\u0000\u0000\u0000lo\u0005"+
		"B\u0000\u0000mp\u0003\u001e\u000f\u0000np\u0005B\u0000\u0000om\u0001\u0000"+
		"\u0000\u0000on\u0001\u0000\u0000\u0000p\u000f\u0001\u0000\u0000\u0000"+
		"qr\u0005B\u0000\u0000rx\u0003\u001e\u000f\u0000st\u0005\f\u0000\u0000"+
		"tu\u0005B\u0000\u0000uw\u0003\u001e\u000f\u0000vs\u0001\u0000\u0000\u0000"+
		"wz\u0001\u0000\u0000\u0000xv\u0001\u0000\u0000\u0000xy\u0001\u0000\u0000"+
		"\u0000y\u0011\u0001\u0000\u0000\u0000zx\u0001\u0000\u0000\u0000{\u00cb"+
		"\u0003\"\u0011\u0000|}\u0005\r\u0000\u0000}~\u0003 \u0010\u0000~\u007f"+
		"\u0005\u0007\u0000\u0000\u007f\u00cb\u0001\u0000\u0000\u0000\u0080\u0084"+
		"\u0005\b\u0000\u0000\u0081\u0083\u0003\u0002\u0001\u0000\u0082\u0081\u0001"+
		"\u0000\u0000\u0000\u0083\u0086\u0001\u0000\u0000\u0000\u0084\u0082\u0001"+
		"\u0000\u0000\u0000\u0084\u0085\u0001\u0000\u0000\u0000\u0085\u0087\u0001"+
		"\u0000\u0000\u0000\u0086\u0084\u0001\u0000\u0000\u0000\u0087\u00cb\u0005"+
		"\t\u0000\u0000\u0088\u0089\u0005\u000e\u0000\u0000\u0089\u008a\u0003\""+
		"\u0011\u0000\u008a\u008d\u0003\u0012\t\u0000\u008b\u008c\u0005\u000f\u0000"+
		"\u0000\u008c\u008e\u0003\u0012\t\u0000\u008d\u008b\u0001\u0000\u0000\u0000"+
		"\u008d\u008e\u0001\u0000\u0000\u0000\u008e\u00cb\u0001\u0000\u0000\u0000"+
		"\u008f\u0090\u0005\u0010\u0000\u0000\u0090\u0091\u0003\"\u0011\u0000\u0091"+
		"\u009d\u0005\b\u0000\u0000\u0092\u0093\u0005\u0011\u0000\u0000\u0093\u0094"+
		"\u0003\"\u0011\u0000\u0094\u0098\u0005\u0012\u0000\u0000\u0095\u0097\u0003"+
		"\u0012\t\u0000\u0096\u0095\u0001\u0000\u0000\u0000\u0097\u009a\u0001\u0000"+
		"\u0000\u0000\u0098\u0096\u0001\u0000\u0000\u0000\u0098\u0099\u0001\u0000"+
		"\u0000\u0000\u0099\u009c\u0001\u0000\u0000\u0000\u009a\u0098\u0001\u0000"+
		"\u0000\u0000\u009b\u0092\u0001\u0000\u0000\u0000\u009c\u009f\u0001\u0000"+
		"\u0000\u0000\u009d\u009b\u0001\u0000\u0000\u0000\u009d\u009e\u0001\u0000"+
		"\u0000\u0000\u009e\u00a8\u0001\u0000\u0000\u0000\u009f\u009d\u0001\u0000"+
		"\u0000\u0000\u00a0\u00a1\u0005\u0013\u0000\u0000\u00a1\u00a5\u0005\u0012"+
		"\u0000\u0000\u00a2\u00a4\u0003\u0012\t\u0000\u00a3\u00a2\u0001\u0000\u0000"+
		"\u0000\u00a4\u00a7\u0001\u0000\u0000\u0000\u00a5\u00a3\u0001\u0000\u0000"+
		"\u0000\u00a5\u00a6\u0001\u0000\u0000\u0000\u00a6\u00a9\u0001\u0000\u0000"+
		"\u0000\u00a7\u00a5\u0001\u0000\u0000\u0000\u00a8\u00a0\u0001\u0000\u0000"+
		"\u0000\u00a8\u00a9\u0001\u0000\u0000\u0000\u00a9\u00aa\u0001\u0000\u0000"+
		"\u0000\u00aa\u00ab\u0005\t\u0000\u0000\u00ab\u00cb\u0001\u0000\u0000\u0000"+
		"\u00ac\u00ad\u0005\u0014\u0000\u0000\u00ad\u00ae\u0003\"\u0011\u0000\u00ae"+
		"\u00af\u0003\u0012\t\u0000\u00af\u00cb\u0001\u0000\u0000\u0000\u00b0\u00b1"+
		"\u0005\u0014\u0000\u0000\u00b1\u00b2\u0003\u0014\n\u0000\u00b2\u00b3\u0005"+
		"\u0001\u0000\u0000\u00b3\u00b4\u0003\"\u0011\u0000\u00b4\u00b5\u0005\u0001"+
		"\u0000\u0000\u00b5\u00b6\u0003\"\u0011\u0000\u00b6\u00b7\u0003\u0012\t"+
		"\u0000\u00b7\u00cb\u0001\u0000\u0000\u0000\u00b8\u00b9\u0005\u0014\u0000"+
		"\u0000\u00b9\u00ba\u0005B\u0000\u0000\u00ba\u00bb\u0005\f\u0000\u0000"+
		"\u00bb\u00bc\u0005B\u0000\u0000\u00bc\u00bd\u0005\u0004\u0000\u0000\u00bd"+
		"\u00be\u0005\u0015\u0000\u0000\u00be\u00bf\u0003\"\u0011\u0000\u00bf\u00c0"+
		"\u0003\u0012\t\u0000\u00c0\u00cb\u0001\u0000\u0000\u0000\u00c1\u00cb\u0003"+
		"\u0016\u000b\u0000\u00c2\u00cb\u0003\u0018\f\u0000\u00c3\u00cb\u0003\u001a"+
		"\r\u0000\u00c4\u00cb\u0005\u0016\u0000\u0000\u00c5\u00cb\u0005\u0017\u0000"+
		"\u0000\u00c6\u00c8\u0005\u0018\u0000\u0000\u00c7\u00c9\u0003\"\u0011\u0000"+
		"\u00c8\u00c7\u0001\u0000\u0000\u0000\u00c8\u00c9\u0001\u0000\u0000\u0000"+
		"\u00c9\u00cb\u0001\u0000\u0000\u0000\u00ca{\u0001\u0000\u0000\u0000\u00ca"+
		"|\u0001\u0000\u0000\u0000\u00ca\u0080\u0001\u0000\u0000\u0000\u00ca\u0088"+
		"\u0001\u0000\u0000\u0000\u00ca\u008f\u0001\u0000\u0000\u0000\u00ca\u00ac"+
		"\u0001\u0000\u0000\u0000\u00ca\u00b0\u0001\u0000\u0000\u0000\u00ca\u00b8"+
		"\u0001\u0000\u0000\u0000\u00ca\u00c1\u0001\u0000\u0000\u0000\u00ca\u00c2"+
		"\u0001\u0000\u0000\u0000\u00ca\u00c3\u0001\u0000\u0000\u0000\u00ca\u00c4"+
		"\u0001\u0000\u0000\u0000\u00ca\u00c5\u0001\u0000\u0000\u0000\u00ca\u00c6"+
		"\u0001\u0000\u0000\u0000\u00cb\u0013\u0001\u0000\u0000\u0000\u00cc\u00cf"+
		"\u0003\u0004\u0002\u0000\u00cd\u00cf\u0003\"\u0011\u0000\u00ce\u00cc\u0001"+
		"\u0000\u0000\u0000\u00ce\u00cd\u0001\u0000\u0000\u0000\u00cf\u0015\u0001"+
		"\u0000\u0000\u0000\u00d0\u00d1\u0005B\u0000\u0000\u00d1\u00d2\u0007\u0000"+
		"\u0000\u0000\u00d2\u0017\u0001\u0000\u0000\u0000\u00d3\u00d4\u0005B\u0000"+
		"\u0000\u00d4\u00d5\u0005\u0004\u0000\u0000\u00d5\u00d6\u0005\u001b\u0000"+
		"\u0000\u00d6\u00d7\u0003\u001e\u000f\u0000\u00d7\u00d8\u0005\b\u0000\u0000"+
		"\u00d8\u00d9\u0003 \u0010\u0000\u00d9\u00da\u0005\t\u0000\u0000\u00da"+
		"\u00e7\u0001\u0000\u0000\u0000\u00db\u00dc\u0005\u0002\u0000\u0000\u00dc"+
		"\u00dd\u0005B\u0000\u0000\u00dd\u00de\u0005\u001b\u0000\u0000\u00de\u00e7"+
		"\u0003\u001e\u000f\u0000\u00df\u00e0\u0005B\u0000\u0000\u00e0\u00e1\u0005"+
		"\u001c\u0000\u0000\u00e1\u00e2\u0003\"\u0011\u0000\u00e2\u00e3\u0005\u001d"+
		"\u0000\u0000\u00e3\u00e4\u0005\u0003\u0000\u0000\u00e4\u00e5\u0003\"\u0011"+
		"\u0000\u00e5\u00e7\u0001\u0000\u0000\u0000\u00e6\u00d3\u0001\u0000\u0000"+
		"\u0000\u00e6\u00db\u0001\u0000\u0000\u0000\u00e6\u00df\u0001\u0000\u0000"+
		"\u0000\u00e7\u0019\u0001\u0000\u0000\u0000\u00e8\u00e9\u0005B\u0000\u0000"+
		"\u00e9\u00ea\u0005\u0004\u0000\u0000\u00ea\u00eb\u0005\u001e\u0000\u0000"+
		"\u00eb\u00ec\u0003\u001e\u000f\u0000\u00ec\u00ed\u0005\b\u0000\u0000\u00ed"+
		"\u00ee\u0003\u001c\u000e\u0000\u00ee\u00f4\u0005\f\u0000\u0000\u00ef\u00f0"+
		"\u0003\u001c\u000e\u0000\u00f0\u00f1\u0005\f\u0000\u0000\u00f1\u00f3\u0001"+
		"\u0000\u0000\u0000\u00f2\u00ef\u0001\u0000\u0000\u0000\u00f3\u00f6\u0001"+
		"\u0000\u0000\u0000\u00f4\u00f2\u0001\u0000\u0000\u0000\u00f4\u00f5\u0001"+
		"\u0000\u0000\u0000\u00f5\u00f7\u0001\u0000\u0000\u0000\u00f6\u00f4\u0001"+
		"\u0000\u0000\u0000\u00f7\u00f8\u0005\t\u0000\u0000\u00f8\u0104\u0001\u0000"+
		"\u0000\u0000\u00f9\u00fa\u0005B\u0000\u0000\u00fa\u00fb\u0005\u001c\u0000"+
		"\u0000\u00fb\u00fc\u0003\"\u0011\u0000\u00fc\u00fd\u0005\u001d\u0000\u0000"+
		"\u00fd\u00fe\u0005\u001c\u0000\u0000\u00fe\u00ff\u0003\"\u0011\u0000\u00ff"+
		"\u0100\u0005\u001d\u0000\u0000\u0100\u0101\u0005\u0003\u0000\u0000\u0101"+
		"\u0102\u0003\"\u0011\u0000\u0102\u0104\u0001\u0000\u0000\u0000\u0103\u00e8"+
		"\u0001\u0000\u0000\u0000\u0103\u00f9\u0001\u0000\u0000\u0000\u0104\u001b"+
		"\u0001\u0000\u0000\u0000\u0105\u0106\u0005\b\u0000\u0000\u0106\u0107\u0003"+
		" \u0010\u0000\u0107\u0108\u0005\t\u0000\u0000\u0108\u001d\u0001\u0000"+
		"\u0000\u0000\u0109\u010a\u0007\u0001\u0000\u0000\u010a\u001f\u0001\u0000"+
		"\u0000\u0000\u010b\u0110\u0003\"\u0011\u0000\u010c\u010d\u0005\f\u0000"+
		"\u0000\u010d\u010f\u0003\"\u0011\u0000\u010e\u010c\u0001\u0000\u0000\u0000"+
		"\u010f\u0112\u0001\u0000\u0000\u0000\u0110\u010e\u0001\u0000\u0000\u0000"+
		"\u0110\u0111\u0001\u0000\u0000\u0000\u0111!\u0001\u0000\u0000\u0000\u0112"+
		"\u0110\u0001\u0000\u0000\u0000\u0113\u0114\u0006\u0011\uffff\uffff\u0000"+
		"\u0114\u0115\u0005\u0006\u0000\u0000\u0115\u0116\u0003\"\u0011\u0000\u0116"+
		"\u0117\u0005\u0007\u0000\u0000\u0117\u0158\u0001\u0000\u0000\u0000\u0118"+
		"\u0119\u0005$\u0000\u0000\u0119\u0158\u0003$\u0012\u0000\u011a\u011b\u0005"+
		"%\u0000\u0000\u011b\u0158\u0003$\u0012\u0000\u011c\u011d\u0005&\u0000"+
		"\u0000\u011d\u0158\u0003$\u0012\u0000\u011e\u011f\u0005\'\u0000\u0000"+
		"\u011f\u0158\u0003$\u0012\u0000\u0120\u0121\u0005(\u0000\u0000\u0121\u0158"+
		"\u0003$\u0012\u0000\u0122\u0123\u0005)\u0000\u0000\u0123\u0158\u0003$"+
		"\u0012\u0000\u0124\u0125\u0005*\u0000\u0000\u0125\u0158\u0003$\u0012\u0000"+
		"\u0126\u0127\u0005+\u0000\u0000\u0127\u0158\u0003\"\u0011\u001a\u0128"+
		"\u0129\u0005,\u0000\u0000\u0129\u0158\u0003\"\u0011\u0019\u012a\u012b"+
		"\u0005B\u0000\u0000\u012b\u012c\u00051\u0000\u0000\u012c\u0158\u0003\""+
		"\u0011\u0015\u012d\u012e\u0005B\u0000\u0000\u012e\u012f\u00052\u0000\u0000"+
		"\u012f\u0158\u0003\"\u0011\u0014\u0130\u0131\u0005B\u0000\u0000\u0131"+
		"\u0132\u0005\u001c\u0000\u0000\u0132\u0133\u0003\"\u0011\u0000\u0133\u0134"+
		"\u0005\u001d\u0000\u0000\u0134\u0158\u0001\u0000\u0000\u0000\u0135\u0136"+
		"\u0005B\u0000\u0000\u0136\u0137\u0005\u001c\u0000\u0000\u0137\u0138\u0003"+
		"\"\u0011\u0000\u0138\u0139\u0005\u001d\u0000\u0000\u0139\u013a\u0005\u001c"+
		"\u0000\u0000\u013a\u013b\u0003\"\u0011\u0000\u013b\u013c\u0005\u001d\u0000"+
		"\u0000\u013c\u0158\u0001\u0000\u0000\u0000\u013d\u0158\u0005<\u0000\u0000"+
		"\u013e\u0158\u0005=\u0000\u0000\u013f\u0158\u0005>\u0000\u0000\u0140\u0158"+
		"\u0005?\u0000\u0000\u0141\u0158\u0005@\u0000\u0000\u0142\u0158\u0005A"+
		"\u0000\u0000\u0143\u0158\u0005B\u0000\u0000\u0144\u0158\u0003\u0016\u000b"+
		"\u0000\u0145\u0146\u0005B\u0000\u0000\u0146\u0147\u0005\b\u0000\u0000"+
		"\u0147\u0148\u0005B\u0000\u0000\u0148\u0149\u0005\u0012\u0000\u0000\u0149"+
		"\u014a\u0003\"\u0011\u0000\u014a\u0152\u0005\f\u0000\u0000\u014b\u014c"+
		"\u0005B\u0000\u0000\u014c\u014d\u0005\u0012\u0000\u0000\u014d\u014e\u0003"+
		"\"\u0011\u0000\u014e\u014f\u0005\f\u0000\u0000\u014f\u0151\u0001\u0000"+
		"\u0000\u0000\u0150\u014b\u0001\u0000\u0000\u0000\u0151\u0154\u0001\u0000"+
		"\u0000\u0000\u0152\u0150\u0001\u0000\u0000\u0000\u0152\u0153\u0001\u0000"+
		"\u0000\u0000\u0153\u0155\u0001\u0000\u0000\u0000\u0154\u0152\u0001\u0000"+
		"\u0000\u0000\u0155\u0156\u0005\t\u0000\u0000\u0156\u0158\u0001\u0000\u0000"+
		"\u0000\u0157\u0113\u0001\u0000\u0000\u0000\u0157\u0118\u0001\u0000\u0000"+
		"\u0000\u0157\u011a\u0001\u0000\u0000\u0000\u0157\u011c\u0001\u0000\u0000"+
		"\u0000\u0157\u011e\u0001\u0000\u0000\u0000\u0157\u0120\u0001\u0000\u0000"+
		"\u0000\u0157\u0122\u0001\u0000\u0000\u0000\u0157\u0124\u0001\u0000\u0000"+
		"\u0000\u0157\u0126\u0001\u0000\u0000\u0000\u0157\u0128\u0001\u0000\u0000"+
		"\u0000\u0157\u012a\u0001\u0000\u0000\u0000\u0157\u012d\u0001\u0000\u0000"+
		"\u0000\u0157\u0130\u0001\u0000\u0000\u0000\u0157\u0135\u0001\u0000\u0000"+
		"\u0000\u0157\u013d\u0001\u0000\u0000\u0000\u0157\u013e\u0001\u0000\u0000"+
		"\u0000\u0157\u013f\u0001\u0000\u0000\u0000\u0157\u0140\u0001\u0000\u0000"+
		"\u0000\u0157\u0141\u0001\u0000\u0000\u0000\u0157\u0142\u0001\u0000\u0000"+
		"\u0000\u0157\u0143\u0001\u0000\u0000\u0000\u0157\u0144\u0001\u0000\u0000"+
		"\u0000\u0157\u0145\u0001\u0000\u0000\u0000\u0158\u0182\u0001\u0000\u0000"+
		"\u0000\u0159\u015a\n\u0018\u0000\u0000\u015a\u015b\u0007\u0002\u0000\u0000"+
		"\u015b\u0181\u0003\"\u0011\u0019\u015c\u015d\n\u0017\u0000\u0000\u015d"+
		"\u015e\u0005/\u0000\u0000\u015e\u0181\u0003\"\u0011\u0018\u015f\u0160"+
		"\n\u0016\u0000\u0000\u0160\u0161\u0007\u0003\u0000\u0000\u0161\u0181\u0003"+
		"\"\u0011\u0017\u0162\u0163\n\u0013\u0000\u0000\u0163\u0164\u00053\u0000"+
		"\u0000\u0164\u0181\u0003\"\u0011\u0014\u0165\u0166\n\u0012\u0000\u0000"+
		"\u0166\u0167\u00054\u0000\u0000\u0167\u0181\u0003\"\u0011\u0013\u0168"+
		"\u0169\n\u0011\u0000\u0000\u0169\u016a\u00055\u0000\u0000\u016a\u0181"+
		"\u0003\"\u0011\u0012\u016b\u016c\n\u0010\u0000\u0000\u016c\u016d\u0005"+
		"6\u0000\u0000\u016d\u0181\u0003\"\u0011\u0011\u016e\u016f\n\u000f\u0000"+
		"\u0000\u016f\u0170\u00057\u0000\u0000\u0170\u0181\u0003\"\u0011\u0010"+
		"\u0171\u0172\n\u000e\u0000\u0000\u0172\u0173\u00058\u0000\u0000\u0173"+
		"\u0181\u0003\"\u0011\u000f\u0174\u0175\n\r\u0000\u0000\u0175\u0176\u0007"+
		"\u0004\u0000\u0000\u0176\u0181\u0003\"\u0011\u000e\u0177\u0178\n\f\u0000"+
		"\u0000\u0178\u0179\u0005\u0003\u0000\u0000\u0179\u0181\u0003\"\u0011\r"+
		"\u017a\u017c\n\u001b\u0000\u0000\u017b\u017d\u0003&\u0013\u0000\u017c"+
		"\u017b\u0001\u0000\u0000\u0000\u017d\u017e\u0001\u0000\u0000\u0000\u017e"+
		"\u017c\u0001\u0000\u0000\u0000\u017e\u017f\u0001\u0000\u0000\u0000\u017f"+
		"\u0181\u0001\u0000\u0000\u0000\u0180\u0159\u0001\u0000\u0000\u0000\u0180"+
		"\u015c\u0001\u0000\u0000\u0000\u0180\u015f\u0001\u0000\u0000\u0000\u0180"+
		"\u0162\u0001\u0000\u0000\u0000\u0180\u0165\u0001\u0000\u0000\u0000\u0180"+
		"\u0168\u0001\u0000\u0000\u0000\u0180\u016b\u0001\u0000\u0000\u0000\u0180"+
		"\u016e\u0001\u0000\u0000\u0000\u0180\u0171\u0001\u0000\u0000\u0000\u0180"+
		"\u0174\u0001\u0000\u0000\u0000\u0180\u0177\u0001\u0000\u0000\u0000\u0180"+
		"\u017a\u0001\u0000\u0000\u0000\u0181\u0184\u0001\u0000\u0000\u0000\u0182"+
		"\u0180\u0001\u0000\u0000\u0000\u0182\u0183\u0001\u0000\u0000\u0000\u0183"+
		"#\u0001\u0000\u0000\u0000\u0184\u0182\u0001\u0000\u0000\u0000\u0185\u0187"+
		"\u0005\u0006\u0000\u0000\u0186\u0188\u0003 \u0010\u0000\u0187\u0186\u0001"+
		"\u0000\u0000\u0000\u0187\u0188\u0001\u0000\u0000\u0000\u0188\u0189\u0001"+
		"\u0000\u0000\u0000\u0189\u018a\u0005\u0007\u0000\u0000\u018a%\u0001\u0000"+
		"\u0000\u0000\u018b\u018d\u0005\u0006\u0000\u0000\u018c\u018e\u0003 \u0010"+
		"\u0000\u018d\u018c\u0001\u0000\u0000\u0000\u018d\u018e\u0001\u0000\u0000"+
		"\u0000\u018e\u018f\u0001\u0000\u0000\u0000\u018f\u0193\u0005\u0007\u0000"+
		"\u0000\u0190\u0191\u0005;\u0000\u0000\u0191\u0193\u0005B\u0000\u0000\u0192"+
		"\u018b\u0001\u0000\u0000\u0000\u0192\u0190\u0001\u0000\u0000\u0000\u0193"+
		"\'\u0001\u0000\u0000\u0000!+46=HMQWcjox\u0084\u008d\u0098\u009d\u00a5"+
		"\u00a8\u00c8\u00ca\u00ce\u00e6\u00f4\u0103\u0110\u0152\u0157\u017e\u0180"+
		"\u0182\u0187\u018d\u0192";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}