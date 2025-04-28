using SliceValue = api.compiler.SliceValue;

public class FuncionesEmbebidas
{
    public static void Generar(Environment env)
    {
        //env.DeclareVariable("time", new FunctionValue(new TimeEmbebida(), "time"), 0, 0);
        env.DeclareVariable("strconv.Atoi", new FunctionValue(new AtoiEmbebida(), "strconv.Atoi"), 0, 0);
        env.DeclareVariable("strconv.ParseFloat", new FunctionValue(new ParseFloatEmbebida(), "strconv.ParseFloat"), 0, 0);
        env.DeclareVariable("reflect.TypeOf", new FunctionValue(new TypeOfEmbebida(), "reflect.TypeOf"), 0, 0);
        env.DeclareVariable("slices.Index", new FunctionValue(new IndexEmbebida(), "slices.Index"), 0, 0);
        env.DeclareVariable("strings.Join", new FunctionValue(new JoinEmbebida(), "strings.Join"), 0, 0);
        env.DeclareVariable("len", new FunctionValue(new LenEmbebida(), "len"), 0, 0);
        env.DeclareVariable("append", new FunctionValue(new AppendEmbebida(), "append"), 0, 0);
    }
}


public class AtoiEmbebida : Invocable
{
    public int Arity() => 1;

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        try
        {
            if (args[0] is not StringValue sv)
            {
                throw new Exception("Error: strconv.Atoi espera una cadena como argumento");
            }

            // Verificar si la cadena contiene un punto decimal
            if (sv.Value.Contains('.'))
            {
                throw new Exception($"Error: strconv.Atoi: '{sv.Value}' contiene un punto decimal");
            }

            // Intentar convertir a entero
            if (int.TryParse(sv.Value, out int result))
            {
                return new IntValue(result);
            }

            throw new Exception($"Error: strconv.Atoi: '{sv.Value}' no es un número válido");
        }
        catch (Exception ex)
        {
            visitor.errores.Add(new Errores("Semantico", ex.Message, 0, 0));
            return new VoidValue();
        }
    }
}

public class ParseFloatEmbebida : Invocable
{
    public int Arity() => 1;

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        try
        {
            if (args[0] is not StringValue sv)
            {
                throw new Exception("Error: strconv.ParseFloat espera una cadena como argumento");
            }

            // Intentar convertir a decimal
            if (decimal.TryParse(sv.Value, out decimal result))
            {
                return new DecimalValue(result);
            }

            throw new Exception($"Error: strconv.ParseFloat: '{sv.Value}' no es un número válido");
        }
        catch (Exception ex)
        {
            visitor.errores.Add(new Errores("Semantico", ex.Message, 0, 0));
            return new VoidValue();
        }
    }
}

public class TypeOfEmbebida : Invocable
{
    public int Arity() => 1;

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        try
        {
            if (args.Count != 1)
            {
                throw new Exception("Error: reflect.TypeOf espera un argumento");
            }

            string tipo = args[0] switch
            {
                IntValue => "int",
                DecimalValue => "float64",
                StringValue => "string",
                BoolValue => "bool",
                RuneValue => "rune",
                SliceValue s => $"[]" + s.Type,
                _ => "unknown"
            };

            return new StringValue(tipo);
        }
        catch (Exception ex)
        {
            visitor.errores.Add(new Errores("Semantico", ex.Message, 0, 0));
            return new VoidValue();
        }
    }
}

public class IndexEmbebida : Invocable
{
    public int Arity() => 2;

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        try
        {
            if (args.Count != 2)
            {
                throw new Exception("Error: slices.Index espera dos argumentos");
            }
            if (args[0] is not SliceValue slice)
            {
                throw new Exception("Error: El primer argumento debe ser un slice");
            }

            var valueToFind = args[1];

            // Buscar el valor en el slice
            for (int i = 0; i < slice.Values.Count; i++)
            {
                if (slice.Values[i].GetType() == valueToFind.GetType() &&
                    slice.Values[i].Equals(valueToFind))
                {
                    return new IntValue(i);
                }
            }

            return new IntValue(-1);
        }
        catch (Exception ex)
        {
            visitor.errores.Add(new Errores("Semantico", ex.Message, 0, 0));
            return new VoidValue();
        }
    }

}

public class JoinEmbebida : Invocable
{
    public int Arity() => 2;

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        try
        {
            if (args.Count != 2)
            {
                throw new Exception("Error: strings.Join espera dos argumentos");
            }

            if (args[0] is not SliceValue slice)
            {
                throw new Exception("Error: El primer argumento debe ser un slice");
            }

            if (args[1] is not StringValue separator)
            {
                throw new Exception("Error: El segundo argumento debe ser una cadena");
            }

            // Verificar que sea un slice de strings
            if (slice.Type != "string")
            {
                throw new Exception("Error: strings.Join solo funciona con []string");
            }

            // Convertir cada elemento del slice a string y unirlos
            var strings = slice.Values.Select(v =>
                (v as StringValue)?.Value ??
                throw new Exception("Error: Todos los elementos deben ser strings")
            );

            // Unir los strings con el separador
            return new StringValue(string.Join(separator.Value, strings));
        }
        catch (Exception ex)
        {
            visitor.errores.Add(new Errores("Semantico", ex.Message, 0, 0));
            return new VoidValue();
        }
    }
}

public class LenEmbebida : Invocable
{
    public int Arity() => 1;

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        try
        {
            if (args.Count != 1)
            {
                throw new Exception("Error: len espera un argumento");
            }

            if (args[0] is not SliceValue slice)
            {
                throw new Exception("Error: len solo funciona con slices");
            }

            return new IntValue(slice.Values.Count);
        }
        catch (Exception ex)
        {
            visitor.errores.Add(new Errores("Semantico", ex.Message, 0, 0));
            return new VoidValue();
        }
    }
}

public class AppendEmbebida : Invocable
{
    public int Arity() => 2;

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor)
    {
        try
        {
            if (args.Count != 2)
            {
                throw new Exception("Error: append espera dos argumentos");
            }

            if (args[0] is not SliceValue targetSlice)
            {
                throw new Exception("Error: El primer argumento debe ser un slice");
            }

            var elementToAdd = args[1];

            // para slices multidimensionales
            if (targetSlice.Type.StartsWith("[]"))
            {
                if (elementToAdd is SliceValue sourceSlice)
                {
                    // Verificar que el tipo del slice a agregar coincida
                    string expectedInnerType = targetSlice.Type.Substring(2);
                    if (sourceSlice.Type != expectedInnerType)
                    {
                        throw new Exception($"Error: No se puede agregar un slice de tipo {sourceSlice.Type} a un slice de tipo {targetSlice.Type}");
                    }

                    // Crear un nuevo slice con el elemento agregado
                    var newValues = new List<ValueWrapper>(targetSlice.Values);
                    newValues.Add(new SliceValue(sourceSlice.Type, sourceSlice.Values));
                    return new SliceValue(targetSlice.Type, newValues);
                }
                throw new Exception($"Error: Se esperaba un slice de tipo {targetSlice.Type.Substring(2)}");
            }

            // Caso normal para slices de una dimensión
            if (!visitor.IsCompatibleType(elementToAdd, targetSlice.Type))
            {
                throw new Exception($"Error: No se puede agregar un {elementToAdd.GetType()} a un slice de tipo {targetSlice.Type}");
            }

            // Crear un nuevo slice con el elemento agregado
            return targetSlice.AddValue(elementToAdd);
        }
        catch (Exception ex)
        {
            visitor.errores.Add(new Errores("Semantico", ex.Message, 0, 0));
            return new VoidValue();
        }
    }
}