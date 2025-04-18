public abstract record ValueWrapper;

public record IntValue(int Value) : ValueWrapper;
public record BoolValue(bool Value) : ValueWrapper;
public record StringValue(string Value) : ValueWrapper;
public record RuneValue(char Value) : ValueWrapper;
public record DecimalValue(decimal Value) : ValueWrapper;
public record FunctionValue(Invocable invocable, string Name) : ValueWrapper;
public record VoidValue : ValueWrapper;
//public record StructValue (Struct Struct) : ValueWrapper;
public record NilValue : ValueWrapper;