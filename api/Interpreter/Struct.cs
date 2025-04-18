public class Struct
{
    public string Name { get; }
    public Dictionary<string, string> Fields { get; }
    public Dictionary<string, ForeignFunction> Methods { get; }

    public Struct(string name)
    {
        Name = name;
        Fields = new Dictionary<string, string>();
        Methods = new Dictionary<string, ForeignFunction>();
    }

    public StructValue CreateInstance()
    {
        var instance = new StructValue(this);
        // Inicializar campos con valores por defecto
        foreach (var field in Fields)
        {
            instance.Set(field.Key, GetDefaultValue(field.Value));
        }
        return instance;
    }

    private ValueWrapper GetDefaultValue(string type)
    {
        return type switch
        {
            "int" => new IntValue(0),
            "float64" => new DecimalValue(0),
            "string" => new StringValue(""),
            "bool" => new BoolValue(false),
            "rune" => new RuneValue('\0'),
            _ => new NilValue()
        };
    }
}