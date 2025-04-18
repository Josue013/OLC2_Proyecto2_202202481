public interface Invocable
{
  int Arity(); // Número de argumentos que recibe la función
  ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor);
}