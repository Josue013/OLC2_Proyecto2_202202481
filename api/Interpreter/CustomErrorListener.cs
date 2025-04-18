using Antlr4.Runtime;
using System.IO;

namespace api.compiler
{
    public class CustomErrorListener : IAntlrErrorListener<IToken>, IAntlrErrorListener<int>
{
    private readonly List<Errores> erroresLexicos;
    private readonly List<Errores> erroresSintacticos;

    public CustomErrorListener()
    {
        this.erroresLexicos = new List<Errores>();
        this.erroresSintacticos = new List<Errores>();
    }

    public void SyntaxError(TextWriter output, IRecognizer recognizer, IToken offendingSymbol, int line, int charPositionInLine, string msg, RecognitionException e)
    {
        // Error sintáctico
        erroresSintacticos.Add(new Errores("Sintactico", msg, line, charPositionInLine));
    }

    public void SyntaxError(TextWriter output, IRecognizer recognizer, int offendingSymbol, int line, int charPositionInLine, string msg, RecognitionException e)
    {
        // Error léxico
        erroresLexicos.Add(new Errores("Lexico", msg, line, charPositionInLine));
    }

    public List<Errores> GetErrores()
    {
        return erroresLexicos.Concat(erroresSintacticos).ToList();
    }

    public bool HasErrors()
    {
        return erroresLexicos.Count > 0 || erroresSintacticos.Count > 0;
    }
}
}