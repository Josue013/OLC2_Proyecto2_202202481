using analyzer;

public class ForeignFunction : Invocable
{
    private Environment closure;
    private LanguageParser.FuncDClContext context;

    public ForeignFunction(Environment closure, LanguageParser.FuncDClContext context)
    {
        this.closure = closure;
        this.context = context;
    }

    public int Arity()
    {
        // Ya no hay structs, solo parámetros normales
        return context.@params()?.param().Length ?? 0;
    }

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        var env = new Environment(closure);
        var previousEnv = visitor.currentEnvironment;
        visitor.currentEnvironment = env;

        try
        {
            // Procesar los parámetros normales
            if (context.@params() != null)
            {
                for (int i = 0; i < context.@params().param().Length; i++)
                {
                    if (i >= args.Count)
                    {
                        throw new Exception($"Error: Faltan argumentos para la función");
                    }
                    string paramName = context.@params().param()[i].ID().GetText();
                    env.DeclareVariable(paramName, args[i], context.Start.Line, context.Start.Column);
                }
            }

            // Ejecutar el cuerpo de la función
            foreach (var stmt in context.dcl())
            {
                visitor.Visit(stmt);
            }

            visitor.currentEnvironment = previousEnv;
            return visitor.defaultValue;
        }
        catch (ReturnException ret)
        {
            visitor.currentEnvironment = previousEnv;
            return ret.Value;
        }
        catch (Exception ex)
        {
            visitor.currentEnvironment = previousEnv;
            throw;
        }
    }
}