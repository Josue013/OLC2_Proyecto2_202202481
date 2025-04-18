using SliceValue = api.compiler.SliceValue;

public class Environment
{

    public Dictionary<string, ValueWrapper> variables = new Dictionary<string, ValueWrapper>();
    public Environment? parent;
    public List<Errores> errores = new List<Errores>();

    public Environment(Environment? parent)
    {
        this.parent = parent;

        if (parent == null)
        {
            this.variables["nil"] = new NilValue();
        }
    }

    // Función para obtener una variable
    public ValueWrapper GetVariable(string id, int line, int column)
    {

        try
        {
            if (variables.ContainsKey(id))
            {
                return variables[id];
            }

            // Si no se encuentra la variable en el entorno actual se busca en el entorno padre
            if (parent != null)
            {
                return parent.GetVariable(id, line, column);
            }

            throw new Exception("Variable " + id + " not found");
        }
        catch (System.Exception ex)
        {
            errores.Add(new Errores("Semantico", ex.Message, line, column));
            return new VoidValue(); // Valor por defecto en caso de error
        }
    }

    // Función para declarar una variable
    public void DeclareVariable(string id, ValueWrapper value, int line, int column)
    {
        try
        {
            if (variables.ContainsKey(id))
            {
                throw new Exception("La Variable " + id + " ya ha sido declarada anteriormente");
            }
            else
            {
                variables[id] = value;
            }
        }
        catch (System.Exception ex)
        {
            errores.Add(new Errores("Semantico", ex.Message, line, column));
        }
    }

    // Función para asignar una variable
    public ValueWrapper AssignVariable(string id, ValueWrapper value, int line, int column)
    {
        try
        {
            if (variables.ContainsKey(id))
            {
                variables[id] = value;
                return value;
            }

            // Si no se encuentra la variable en el entorno actual se busca en el entorno padre
            if (parent != null)
            {
                return parent.AssignVariable(id, value, line, column);
            }

            throw new Exception("Variable " + id + " not found");
        }
        catch (System.Exception ex)
        {
            errores.Add(new Errores("Semantico", ex.Message, line, column));
            return new VoidValue();
        }
    }

    // Funcion para slices
    public void DeclareSlice(string id, string type)
    {
        if (variables.ContainsKey(id))
        {
            throw new Exception($"Error: El slice '{id}' ya ha sido declarado.");
        }
        variables[id] = new SliceValue(type);
    }

    // Declara un slice con valores
    public void DeclareSliceWithValues(string id, string type, List<ValueWrapper> values)
    {
        if (variables.ContainsKey(id))
        {
            throw new Exception($"Error: El slice '{id}' ya ha sido declarado.");
        }
        variables[id] = new SliceValue(type, values);
    }

    // Obtiene un slice
    public SliceValue GetSlice(string id)
    {
        if (variables.ContainsKey(id))
        {
            if (variables[id] is SliceValue slice)
            {
                return slice;
            }
            throw new Exception($"Error: La variable '{id}' no es un slice.");
        }

        if (parent != null)
        {
            return parent.GetSlice(id);
        }

        throw new Exception($"Error: El slice '{id}' no ha sido declarado.");
    }

    // Agrega un valor a un slice
    public void SetSliceElement(string id, int index, ValueWrapper value)
    {
        var slice = GetSlice(id);
        variables[id] = slice.SetValue(index, value);
    }

}