public class BoundMethod : Invocable
{
    private readonly StructValue receiver;
    private readonly ForeignFunction method;

    public BoundMethod(StructValue receiver, ForeignFunction method)
    {
        this.receiver = receiver;
        this.method = method;
    }

    public int Arity()
    {
        // Restar 1 para no contar el receptor
        return method.Arity() - 1;
    }

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        // Agregar el receptor como primer argumento
        var allArgs = new List<ValueWrapper> { receiver };
        if (args != null)
        {
            allArgs.AddRange(args);
        }
        return method.Invoke(allArgs, visitor);
    }
}