using System.Text;

public record StructValue : ValueWrapper
{
    private readonly Struct type;
    private Dictionary<string, ValueWrapper> fields;

    public StructValue(Struct type)
    {
        this.type = type;
        this.fields = new Dictionary<string, ValueWrapper>();
    }

    private bool IsCompatibleType(ValueWrapper value, string expectedType)
    {
        // permitir la asignación
        if (value is NilValue && !IsBuiltInType(expectedType))
        {
            return true;
        }

        return (expectedType, value) switch
        {
            ("int", IntValue _) => true,
            ("float64", DecimalValue _) => true,
            ("float64", IntValue _) => true,
            ("string", StringValue _) => true,
            ("bool", BoolValue _) => true,
            ("rune", RuneValue _) => true,
            // Para structs comparar por nombre del tipo
            (var type, StructValue s) => s.GetType().Name == type,
            _ => false
        };
    }

    private bool IsBuiltInType(string type)
    {
        return type switch
        {
            "int" or "float64" or "string" or "bool" or "rune" => true,
            _ => false
        };
    }

    public void Set(string name, ValueWrapper value)
    {
        // Verificar si el campo existe
        if (!type.Fields.ContainsKey(name))
        {
            throw new Exception($"El campo {name} no existe en el struct {type.Name}");
        }

        string expectedType = type.Fields[name];

        if (value is NilValue)
        {
            if (!IsBuiltInType(expectedType))
            {
                fields[name] = value;
                return;
            }
            throw new Exception($"No se puede asignar nil a un campo de tipo {expectedType}");
        }

        if (value is StructValue structValue)
        {
            if (structValue.GetType().Name == expectedType)
            {
                fields[name] = value;
                return;
            }
            throw new Exception($"Tipo incompatible para el campo '{name}'");
        }

        if (!IsCompatibleType(value, expectedType))
        {
            throw new Exception($"Tipo incompatible para el campo '{name}'");
        }

        fields[name] = value;
    }

    public ValueWrapper Get(string name)
    {
        // Primero buscar en los métodos
        if (type.Methods.ContainsKey(name))
        {
            return new FunctionValue(new BoundMethod(this, type.Methods[name]), name);
        }

        // Luego buscar en los campos
        if (fields.ContainsKey(name))
        {
            return fields[name];
        }

        throw new Exception($"El campo o método '{name}' no existe en el struct {type.Name}");
    }

    public Struct GetType() => type;

    public override string ToString()
{
    var sb = new StringBuilder();
    sb.Append(type.Name); 
    sb.Append('{');

    bool first = true;
    
    foreach (var field in fields)
    {
        if (!first)
        {
            sb.Append(", ");
        }
        
        string valueStr = field.Value switch
        {
            IntValue iv => iv.Value.ToString(),
            DecimalValue dv => dv.Value.ToString("0.00", System.Globalization.CultureInfo.InvariantCulture),
            BoolValue bv => bv.Value.ToString().ToLower(),
            StringValue sv => sv.Value,
            RuneValue rv => rv.Value.ToString(),
            NilValue => "nil",
            StructValue sv => sv.ToString(),
            _ => field.Value.ToString()
        };
        
        sb.Append($"{field.Key}: {valueStr}");
        first = false;
    }
    
    sb.Append('}');
    return sb.ToString();
}
}