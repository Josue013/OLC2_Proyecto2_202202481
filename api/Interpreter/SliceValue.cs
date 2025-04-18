using System.Collections.Generic;
using System.Text;

namespace api.compiler
{
    public record SliceValue : ValueWrapper
    {
        public List<ValueWrapper> Values { get; init; }
        public string Type { get; init; }

        public SliceValue(string type)
        {
            Type = type;
            Values = new List<ValueWrapper>();
        }

        public SliceValue(string type, List<ValueWrapper> values)
        {
            Type = type;
            Values = values;
        }

        public override string ToString()
{
    var result = new StringBuilder("[");
    
    for (int i = 0; i < Values.Count; i++)
    {
        if (Values[i] is SliceValue innerSlice)
        {
            // Para slices anidados
            result.Append(innerSlice.ToString());
        }
        else
        {
            // Para slices simples
            switch (Values[i])
            {
                case IntValue intVal:
                    result.Append(intVal.Value);
                    break;
                case DecimalValue decVal:
                    result.Append(decVal.Value.ToString("0.00", System.Globalization.CultureInfo.InvariantCulture));
                    break;
                case StringValue strVal:
                    result.Append(strVal.Value);
                    break;
                case BoolValue boolVal:
                    result.Append(boolVal.Value.ToString().ToLower());
                    break;
                case RuneValue runeVal:
                    result.Append(runeVal.Value);
                    break;
                default:
                    result.Append(Values[i]);
                    break;
            }
        }

        if (i < Values.Count - 1)
        {
            result.Append(" ");
        }
    }
    
    result.Append("]");
    return result.ToString();
}

        // Para mantener la inmutabilidad del record, creamos un método para agregar valores
        public SliceValue AddValue(ValueWrapper value)
        {
            var newValues = new List<ValueWrapper>(Values) { value };
            return new SliceValue(Type, newValues);
        }

        // Método para modificar un valor en un índice específico
        public SliceValue SetValue(int index, ValueWrapper value)
        {
            if (index < 0 || index >= Values.Count)
            {
                throw new System.Exception($"Índice {index} fuera de rango");
            }

            var newValues = new List<ValueWrapper>(Values);
            newValues[index] = value;
            return new SliceValue(Type, newValues);
        }
    }
}