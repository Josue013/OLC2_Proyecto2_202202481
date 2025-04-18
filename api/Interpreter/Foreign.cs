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
        // Para métodos de struct incluir el receptor en el conteo
        int baseArity = context.@params()?.ID().Length ?? 0;
        return context.ID().Length > 1 ? baseArity + 1 : baseArity;
    }

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        var env = new Environment(closure);
        var previousEnv = visitor.currentEnvironment;
        visitor.currentEnvironment = env;

        try
        {
            // Si es un método de struct
            if (context.ID().Length > 1)
            {
                string receiverName = context.ID(0).GetText();
                if (args.Count == 0)
                {
                    throw new Exception($"Error: Falta el receptor para el método {context.ID(2).GetText()}");
                }
                // Declarar el receptor en el entorno
                env.DeclareVariable(receiverName, args[0], context.Start.Line, context.Start.Column);

                // Remover el receptor de los argumentos
                args = args.Skip(1).ToList();
            }

            // Procesar los parámetros normales
            if (context.@params() != null)
            {
                for (int i = 0; i < context.@params().ID().Length; i++)
                {
                    if (i >= args.Count)
                    {
                        throw new Exception($"Error: Faltan argumentos para la función");
                    }
                    string paramName = context.@params().ID(i).GetText();
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