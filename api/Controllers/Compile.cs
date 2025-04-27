using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using analyzer;
using Antlr4.Runtime;
using Antlr4.Runtime.Tree;
using api.compiler;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using AstGenerator = api.compiler.ASTGenerator;

namespace api.Controllers
{
    [Route("[controller]")]
    public class Compile : Controller
    {
        private readonly ILogger<Compile> _logger;

        public Compile(ILogger<Compile> logger)
        {
            _logger = logger;
        }

        public class CompileRequest
        {
            [Required]
            public required string code { get; set; }
        }

        // POST /compile
        [HttpPost]
public IActionResult Post([FromBody] CompileRequest request)
{
    if (!ModelState.IsValid)
    {
        return BadRequest(new { error = "Invalid request" });
    }

    try
    {
        Directory.CreateDirectory("Reportes");

        // Preparar archivos
        string dotFile = "Reportes/ReporteAST.dot";
        string imageFile = "Reportes/ReporteAST.svg";
        string errorFile = "Reportes/ReporteErrores.html";
        string symbolFile = "Reportes/TablaSimbolos.html";

        // Inicializar generador de reportes
        var errorReportGenerator = new ErrorReportGenerator();

        // Análisis léxico
        var inputStream = new AntlrInputStream(request.code);
        var lexer = new LanguageLexer(inputStream);
        var errorListener = new CustomErrorListener();
        lexer.RemoveErrorListeners();
        lexer.AddErrorListener(errorListener);

        // Verificar errores léxicos
        var tokens = new CommonTokenStream(lexer);
        if (errorListener.HasErrors())
        {
            var lexErrors = errorListener.GetErrores();
            foreach (var error in lexErrors)
            {
                errorReportGenerator.AddError(error);
            }
            errorReportGenerator.SaveToFile(errorFile);
            return Ok(new
            {
                result = "",
                errorReport = errorFile,
                hasErrors = true,
                errors = lexErrors
            });
        }

        // Análisis sintáctico
        var parser = new LanguageParser(tokens);
        parser.RemoveErrorListeners();
        parser.AddErrorListener(errorListener);

        // Remover recuperación de errores
        parser.ErrorHandler = new BailErrorStrategy();

        // Obtener el árbol y procesar
        var tree = parser.program();

        // Verificar errores sintácticos
        if (errorListener.HasErrors())
        {
            var synErrors = errorListener.GetErrores();
            foreach (var error in synErrors)
            {
                errorReportGenerator.AddError(error);
            }
            errorReportGenerator.SaveToFile(errorFile);
            return Ok(new
            {
                result = "",
                errorReport = errorFile,
                hasErrors = true,
                errors = synErrors
            });
        }

        // Análisis semántico
        var interpreter = new InterpreterVisitor();
        interpreter.Visit(tree);

        // Verificar errores semánticos
        var semanticErrors = interpreter.GetAllErrors();
        if (semanticErrors.Any())
        {
            foreach (var error in semanticErrors)
            {
                errorReportGenerator.AddError(error);
            }
            errorReportGenerator.SaveToFile(errorFile);
            return Ok(new
            {
                result = "",
                errorReport = errorFile,
                hasErrors = true,
                errors = semanticErrors
            });
        }

        // Si no hay errores, generar código
        var compiler = new CompilerVisitor();
        compiler.Visit(tree);
        string output = compiler.Code.ToString();

        // Generar reportes solo si no hay errores
        var astGenerator = new ASTGenerator();
        string dot = astGenerator.GenerateAST(tree, parser);
        astGenerator.SaveToFile(dot, dotFile);
        astGenerator.GenerateImage(dotFile, imageFile);
        
        interpreter.simbolos.SaveToFile(symbolFile);

        return Ok(new
        {
            result = output,
            ast = imageFile,
            errorReport = errorFile,
            symbolTable = symbolFile,
            hasErrors = false,
            errors = new List<Errores>()
        });
    }
    catch (Exception ex)
    {
        // Capturar cualquier error no manejado
        var errorReportGenerator = new ErrorReportGenerator();
        errorReportGenerator.AddError(new Errores("Fatal", ex.Message, 0, 0));
        errorReportGenerator.SaveToFile("Reportes/ReporteErrores.html");

        return Ok(new
        {
            result = "",
            errorReport = "Reportes/ReporteErrores.html",
            hasErrors = true,
            errors = new List<Errores> { new Errores("Fatal", ex.Message, 0, 0) }
        });
    }
}

    }
}