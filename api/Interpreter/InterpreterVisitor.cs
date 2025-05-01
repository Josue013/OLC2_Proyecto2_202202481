
using analyzer;
using Antlr4.Runtime.Misc;
using api.compiler;
using System.Text;
using SliceValue = api.compiler.SliceValue;


public class InterpreterVisitor : LanguageBaseVisitor<ValueWrapper>
{

    public ValueWrapper defaultValue = new VoidValue();
    public string output = "";
    public Environment currentEnvironment;
    public InterpreterVisitor()
    {
        currentEnvironment = new Environment(null);
        FuncionesEmbebidas.Generar(currentEnvironment);
    }
    public List<Errores> errores = new List<Errores>();
    public SymbolReportGenerator simbolos = new SymbolReportGenerator();

    // Funcion para obtener todos los errores
    public List<Errores> GetAllErrors()
    {
        var allErrors = new List<Errores>();
        allErrors.AddRange(errores); // Errores del visitor
        allErrors.AddRange(currentEnvironment.errores); // Errores del entorno actual

        // Recoger errores de entornos padres
        var env = currentEnvironment.parent;
        while (env != null)
        {
            allErrors.AddRange(env.errores);
            env = env.parent;
        }

        return allErrors;
    }

    // VisitProgram
    public override ValueWrapper VisitProgram(LanguageParser.ProgramContext context)
    {
        // // Primera pasada: procesar solo declaraciones
        // foreach (var dcl in context.dcl())
        // {
        //     if (dcl.funcDCl() != null || dcl.varDcl() != null || dcl.structDcl() != null)
        //     {
        //         Visit(dcl);
        //     }
        // }

        // // Buscar la función main
        // var mainFunc = currentEnvironment.GetVariable("main", 0, 0);
        // if (mainFunc is FunctionValue functionValue)
        // {
        //     if (functionValue.invocable.Arity() > 0)
        //     {
        //         throw new Exception("Error: La función main no debe tener parámetros");
        //     }
        //     return functionValue.invocable.Invoke(new List<ValueWrapper>(), this);
        // }
        // else
        // {
        //     throw new Exception("Error: No se encontró la función main");
        // }

        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }
        return defaultValue;

    }

    // VisitVarDcl
    public override ValueWrapper VisitVarDcl(LanguageParser.VarDclContext context)
    {
        string id = context.ID().GetText();
        string type = context.type().GetText();

        // Añadir Variable a la tabla de Simbolos
        simbolos.AddSymbol(new Symbol(id, "Variable", type, context.Start.Line, context.Start.Column));

        if (context.expr() == null)
        {
            // Valor por defecto
            currentEnvironment.DeclareVariable(id, ValorPorDefecto(type), context.Start.Line, context.Start.Column);
            return defaultValue;
        }
        else
        {
            // Valor asignado
            ValueWrapper value = Visit(context.expr());
            currentEnvironment.DeclareVariable(id, value, context.Start.Line, context.Start.Column);
            return defaultValue;
        }
    }

    public override ValueWrapper VisitVarDcl2(LanguageParser.VarDcl2Context context)
    {
        string id = context.ID().GetText();
        ValueWrapper value = Visit(context.expr());

        if (currentEnvironment.variables.ContainsKey(id))
        {
            throw new Exception("Error: La variable " + id + " ya ha sido declarada.");
        }

        // Añadir Variable a la tabla de Simbolos
        simbolos.AddSymbol(new Symbol(id, "Variable", value.GetType().Name, context.Start.Line, context.Start.Column));
        currentEnvironment.DeclareVariable(id, value, context.Start.Line, context.Start.Column);
        
        return defaultValue;
    }

    // Valores por defecto
    public ValueWrapper ValorPorDefecto(string type)
    {
        return type switch
        {
            "int" => new IntValue(0),
            "float64" => new DecimalValue((decimal)0.0),
            "bool" => new BoolValue(false),
            "string" => new StringValue(""),
            "rune" => new RuneValue('\0'),

            _ => throw new System.Exception("Tipo invalido")
        };
    }

    // VisitAssign
    public override ValueWrapper VisitAssign(LanguageParser.AssignContext context)
    {
        var asignee = context.expr(0);
        ValueWrapper value = Visit(context.expr(1));

        try
        {

            if (asignee is LanguageParser.IdentifierContext idContext)
            {
                // Manejo de asignación de variables simples
                string id = idContext.ID().GetText();
                string signo = context.GetChild(1).GetText();

                if (signo == ":=")
                {
                    //if (currentEnvironment.variables.ContainsKey(id))
                    //{
                    //  throw new Exception("Error: La variable " + id + " ya ha sido declarada.");
                    //}
                    //currentEnvironment.DeclareVariable(id, value, context.Start.Line, context.Start.Column);
                }
                else if (signo == "=")
                {
                    if (!currentEnvironment.variables.ContainsKey(id) && currentEnvironment.parent == null)
                    {
                        throw new Exception("Error: La variable " + id + " no ha sido declarada.");
                    }
                    var valorAntiguo = currentEnvironment.GetVariable(id, context.Start.Line, context.Start.Column);
                    if (valorAntiguo.GetType() != value.GetType() && !(valorAntiguo is DecimalValue && value is IntValue))
                    {
                        throw new Exception("Error: El tipo de dato de la variable " + id + " no coincide.");
                    }
                    if (valorAntiguo is DecimalValue && value is IntValue)
                    {
                        value = new DecimalValue(((IntValue)value).Value);
                    }
                    currentEnvironment.AssignVariable(id, value, context.Start.Line, context.Start.Column);
                }
            }
            else if (asignee is LanguageParser.Slice6StmtContext sliceContext)
            {
                // Manejo de asignación de elementos de slice
                string id = sliceContext.ID().GetText();
                ValueWrapper indexValue = Visit(sliceContext.expr());

                if (indexValue is not IntValue intIndex)
                {
                    throw new Exception("Error: El índice debe ser un entero");
                }

                var sliceValue = currentEnvironment.GetVariable(id, context.Start.Line, context.Start.Column);
                if (sliceValue is not SliceValue slice)
                {
                    throw new Exception("Error: La variable no es un slice");
                }

                int index = intIndex.Value;
                if (index < 0 || index >= slice.Values.Count)
                {
                    throw new Exception($"Error: Índice {index} fuera de rango");
                }

                if (!IsCompatibleType(value, slice.Type))
                {
                    throw new Exception($"Error: Tipo incompatible para el slice de tipo {slice.Type}");
                }

                currentEnvironment.AssignVariable(id, slice.SetValue(index, value), context.Start.Line, context.Start.Column);
            }
            else if (asignee is LanguageParser.Slice7StmtContext matrixContext)
            {
                // Manejo de asignación de elementos de matriz
                string id = matrixContext.ID().GetText();
                ValueWrapper rowIndex = Visit(matrixContext.expr(0));
                ValueWrapper colIndex = Visit(matrixContext.expr(1));

                if (rowIndex is not IntValue row || colIndex is not IntValue col)
                {
                    throw new Exception("Error: Los índices deben ser enteros");
                }

                var matrixValue = currentEnvironment.GetVariable(id, context.Start.Line, context.Start.Column);
                if (matrixValue is not SliceValue outerSlice)
                {
                    throw new Exception("Error: La variable no es una matriz");
                }

                int i = row.Value;
                if (i < 0 || i >= outerSlice.Values.Count)
                {
                    throw new Exception($"Error: Índice de fila {i} fuera de rango");
                }

                if (outerSlice.Values[i] is not SliceValue innerSlice)
                {
                    throw new Exception("Error: Estructura de matriz inválida");
                }

                int j = col.Value;
                if (j < 0 || j >= innerSlice.Values.Count)
                {
                    throw new Exception($"Error: Índice de columna {j} fuera de rango");
                }

                if (!IsCompatibleType(value, innerSlice.Type))
                {
                    throw new Exception($"Error: Tipo incompatible para la matriz de tipo {innerSlice.Type}");
                }

                // Actualizar el valor en la matriz
                var newInnerSlice = innerSlice.SetValue(j, value);
                var newOuterSlice = outerSlice.SetValue(i, newInnerSlice);
                currentEnvironment.AssignVariable(id, newOuterSlice, context.Start.Line, context.Start.Column);
            }

            else if (asignee is LanguageParser.CallExprContext callContext)
            {
                ValueWrapper callee = Visit(callContext.expr());

                for (int i = 0; i < callContext.call().Length; i++)
                {
                    var action = callContext.call(i);

                    // Si es el último call y es una asignación
                    if (i == callContext.call().Length - 1)
                    {
                        if (action is LanguageParser.GetContext propertyAccess)
                        {
                            if (callee is StructValue structValue)
                            {
                                var property = propertyAccess.ID().GetText();
                                structValue.Set(property, value);
                            }
                            else
                            {
                                throw new Exception("Error: No se puede acceder a una propiedad de un no-struct");
                            }
                        }
                        else
                        {
                            throw new Exception("Error: Asignación inválida");
                        }
                    }

                    // Manejo de llamadas a métodos y acceso a campos
                    if (action is LanguageParser.FuncCallContext funcall)
                    {
                        if (callee is FunctionValue functionValue)
                        {
                            callee = VisitCall(functionValue.invocable, funcall.exprList());
                        }
                        else
                        {
                            throw new Exception("Error: No se puede llamar a un valor que no es una función");
                        }
                    }
                    else if (action is LanguageParser.GetContext propertyAccess)
                    {
                        if (callee is StructValue structValue)
                        {
                            callee = structValue.Get(propertyAccess.ID().GetText());
                        }
                        else
                        {
                            throw new Exception("Error: No se puede acceder a una propiedad de un no-struct");
                        }
                    }
                }

                return callee;
            }
            else
            {
                throw new Exception("Error: Asignación inválida.");
            }

            return defaultValue;
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
        }

        return value;
    }

    // VisitExprStmt
    public override ValueWrapper VisitExprStmt(LanguageParser.ExprStmtContext context)
    {
        return Visit(context.expr());
    }

    // VisitPrintStmt
    public override ValueWrapper VisitPrintStmt(LanguageParser.PrintStmtContext context)
    {
        bool flag = false;
        StringBuilder OutputTemporal = new StringBuilder();

        try
        {
            // Recorrer cada expresion
            foreach (var expr in context.exprList().expr())
            {
                try
                {
                    // Parsear la salida
                    ValueWrapper value = Visit(expr);
                    switch (value)
                    {
                        case IntValue i:
                            OutputTemporal.Append(i.Value.ToString());
                            flag = true;
                            break;
                        case DecimalValue d:
                            OutputTemporal.Append(d.Value.ToString("0.00", System.Globalization.CultureInfo.InvariantCulture));
                            flag = true;
                            break;
                        case BoolValue b:
                            OutputTemporal.Append(b.Value.ToString());
                            flag = true;
                            break;
                        case StringValue s:
                            OutputTemporal.Append(s.Value);
                            flag = true;
                            break;
                        case RuneValue r:
                            OutputTemporal.Append(r.Value.ToString());
                            flag = true;
                            break;
                        case SliceValue slice:
                            // Darle formato al slice [valor1 valor2 valor3]
                            OutputTemporal.Append("[");
                            for (int i = 0; i < slice.Values.Count; i++)
                            {
                                var currentValue = slice.Values[i];
                                // Parsear el valor
                                string valueStr = currentValue switch
                                {
                                    IntValue iv => iv.Value.ToString(),
                                    DecimalValue dv => dv.Value.ToString("0.0"),
                                    BoolValue bv => bv.Value.ToString().ToLower(),
                                    StringValue sv => sv.Value,
                                    RuneValue rv => rv.Value.ToString(),
                                    _ => currentValue.ToString()
                                };
                                OutputTemporal.Append(valueStr);
                                if (i < slice.Values.Count - 1)
                                {
                                    OutputTemporal.Append(", ");
                                }
                            }
                            OutputTemporal.Append("]");
                            flag = true;
                            break;
                        case FunctionValue f:
                            OutputTemporal.Append($"<fn {f.Name}>");
                            flag = true;
                            break;
                        case StructValue s:
                            OutputTemporal.Append(s.ToString());
                            flag = true;
                            break;
                        case NilValue:
                            OutputTemporal.Append("nil");
                            flag = true;
                            break;
                        case VoidValue:
                            // No hacer nada para VoidValue
                            break;
                        default:
                            throw new System.Exception($"No se puede imprimir el valor {value}");
                    }
                    if (flag)
                    {
                        OutputTemporal.Append(" ");
                    }
                }
                catch (Exception ex)
                {
                    System.Console.WriteLine(ex.Message);
                    errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
                    return defaultValue; // Si hay un error, no imprimir nada
                }
            }

            if (flag)
            {
                OutputTemporal.Append("\n");
            }

            output += OutputTemporal.ToString();
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
        }

        return defaultValue;
    }

    // VisitIdentifier
    public override ValueWrapper VisitIdentifier(LanguageParser.IdentifierContext context)
    {
        string id = context.ID().GetText();
        return currentEnvironment.GetVariable(id, context.Start.Line, context.Start.Column);
    }

    // VisitParens
    public override ValueWrapper VisitParens(LanguageParser.ParensContext context)
    {
        return Visit(context.expr());
    }

    // VisitNegate
    public override ValueWrapper VisitNegate(LanguageParser.NegateContext context)
    {
        ValueWrapper value = Visit(context.expr());
        return value switch
        {
            // -IntValue
            IntValue i => new IntValue(-i.Value),
            // -DecimalValue
            DecimalValue d => new DecimalValue(-d.Value),

            _ => throw new System.Exception("Operacion invalida")
        };
    }

    // VisitInt
    public override ValueWrapper VisitInt(LanguageParser.IntContext context)
    {
        return new IntValue(int.Parse(context.INT().GetText()));
    }

    // VisitDecimal
    public override ValueWrapper VisitDecimal(LanguageParser.DecimalContext context)
    {
        return new DecimalValue(decimal.Parse(context.DECIMAL().GetText()));
    }

    // VisitBool
    public override ValueWrapper VisitBool(LanguageParser.BoolContext context)
    {
        return new BoolValue(bool.Parse(context.BOOL().GetText()));
    }

    // VisitNill
    public override ValueWrapper VisitNil(LanguageParser.NilContext context)
    {
        return new NilValue();
    }

    // VisitString
    public override ValueWrapper VisitString(LanguageParser.StringContext context)
    {
        string text = context.STRING().GetText().Trim('"');

        // Remplaza las secuencias de escape
        text = text.Replace("\\n", "\n")
                .Replace("\\t", "\t")
                .Replace("\\r", "\r")
                .Replace("\\\"", "\"")
                .Replace("\\\\", "\\");

        return new StringValue(text);
    }

    // VisitRune
    public override ValueWrapper VisitRune(LanguageParser.RuneContext context)
    {
        string text = context.RUNE().GetText().Trim('\'');

        // Remplaza las secuencias de escape
        text = text.Replace("\\n", "\n")
                .Replace("\\t", "\t")
                .Replace("\\r", "\r")
                .Replace("\\\"", "\"")
                .Replace("\\\\", "\\");

        if (text.Length != 1)
        {
            throw new Exception("Error: Las literales de tipo rune deben contener un solo carácter.");
        }

        return new RuneValue(text[0]);
    }

    // VisitBlockStmt
    public override ValueWrapper VisitBlockStmt(LanguageParser.BlockStmtContext context)
    {
        Environment PreviousEnvironment = currentEnvironment; // Guardar referencia al entorno anterior
        currentEnvironment = new Environment(PreviousEnvironment); // Crear un nuevo entorno (el del bloque)

        // Se recorren las instrucciones del bloque
        foreach (var stmt in context.dcl())
        {
            Visit(stmt);
        }

        currentEnvironment = PreviousEnvironment; // Restaurar el entorno anterior
        return defaultValue;

    }

    // VisitMulDiv
    public override ValueWrapper VisitMulDiv(LanguageParser.MulDivContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));

        var operador = context.op.Text;

        try
        {
            return (left, right, operador) switch
            {
                // ******** int ********
                // IntValue * IntValue
                (IntValue l, IntValue r, "*") => new IntValue(l.Value * r.Value),
                // IntValue / IntValue
                (IntValue l, IntValue r, "/") => new IntValue(l.Value / r.Value),
                // IntValue * DecimalValue
                (IntValue l, DecimalValue r, "*") => new DecimalValue(l.Value * r.Value),
                // IntValue / DecimalValue
                (IntValue l, DecimalValue r, "/") => new DecimalValue(l.Value / r.Value),

                // ******** decimal ********
                // DecimalValue * DecimalValue
                (DecimalValue l, DecimalValue r, "*") => new DecimalValue(l.Value * r.Value),
                // DecimalValue / DecimalValue
                (DecimalValue l, DecimalValue r, "/") => new DecimalValue(l.Value / r.Value),
                // DecimalValue * IntValue
                (DecimalValue l, IntValue r, "*") => new DecimalValue(l.Value * r.Value),
                // DecimalValue / IntValue
                (DecimalValue l, IntValue r, "/") => new DecimalValue(l.Value / r.Value),
                _ => throw new System.Exception($"No se puede realizar la operacion {left.GetType()} {operador} {right.GetType()}")
            };
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitAddSub
    public override ValueWrapper VisitAddSub(LanguageParser.AddSubContext context)
    {
        ValueWrapper left = Visit(context.GetChild(0));
        ValueWrapper right = Visit(context.expr(1));

        var operador = context.op.Text;

        try
        {
            return (left, right, operador) switch
            {
                // ******** int ********
                // IntValue + IntValue
                (IntValue l, IntValue r, "+") => new IntValue(l.Value + r.Value),
                // IntValue - IntValue
                (IntValue l, IntValue r, "-") => new IntValue(l.Value - r.Value),
                // IntValue + DecimalValue
                (IntValue l, DecimalValue r, "+") => new DecimalValue(l.Value + r.Value),
                // IntValue - DecimalValue
                (IntValue l, DecimalValue r, "-") => new DecimalValue(l.Value - r.Value),

                // ******** decimal ********
                // DecimalValue + DecimalValue
                (DecimalValue l, DecimalValue r, "+") => new DecimalValue(l.Value + r.Value),
                // DecimalValue - DecimalValue
                (DecimalValue l, DecimalValue r, "-") => new DecimalValue(l.Value - r.Value),
                // DecimalValue + IntValue
                (DecimalValue l, IntValue r, "+") => new DecimalValue(l.Value + r.Value),
                // DecimalValue - IntValue
                (DecimalValue l, IntValue r, "-") => new DecimalValue(l.Value - r.Value),

                // ******** string ********
                // StringValue + StringValue
                (StringValue l, StringValue r, "+") => new StringValue(l.Value + r.Value),

                _ => throw new System.Exception($"No se puede realizar la operacion {left.GetType()} {operador} {right.GetType()}")
            };
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitMod
    public override ValueWrapper VisitMod(LanguageParser.ModContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));

        try
        {
            if (right is IntValue rightInt && rightInt.Value == 0)
            {
                throw new Exception("Error: División por cero");
            }

            return (left, right) switch
            {
                // IntValue % IntValue
                (IntValue l, IntValue r) => new IntValue(l.Value % r.Value),
                _ => throw new System.Exception("Error: La operación módulo solo está definida para enteros")
            };
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitAddAssign
    public override ValueWrapper VisitAddAssign(LanguageParser.AddAssignContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper value = Visit(context.expr());

        try
        {
            ValueWrapper currentValue = currentEnvironment.GetVariable(id, context.Start.Line, context.Start.Column);

            ValueWrapper newValue = (currentValue, value) switch
            {
                (IntValue l, IntValue r) => new IntValue(l.Value + r.Value),
                (DecimalValue l, IntValue r) => new DecimalValue(l.Value + r.Value),
                (DecimalValue l, DecimalValue r) => new DecimalValue(l.Value + r.Value),
                (StringValue l, StringValue r) => new StringValue(l.Value + r.Value),

                _ => throw new System.Exception($"No se puede realizar la operacion {currentValue.GetType()} += {value.GetType()}")
            };

            return currentEnvironment.AssignVariable(id, newValue, context.Start.Line, context.Start.Column);
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitSubAssign
    public override ValueWrapper VisitSubAssign(LanguageParser.SubAssignContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper value = Visit(context.expr());

        try
        {
            ValueWrapper currentValue = currentEnvironment.GetVariable(id, context.Start.Line, context.Start.Column);

            ValueWrapper newValue = (currentValue, value) switch
            {
                (IntValue l, IntValue r) => new IntValue(l.Value - r.Value),
                (IntValue l, DecimalValue r) => new DecimalValue(l.Value - r.Value),
                (DecimalValue l, IntValue r) => new DecimalValue(l.Value - r.Value),
                (DecimalValue l, DecimalValue r) => new DecimalValue(l.Value - r.Value),

                _ => throw new System.Exception("Operacion invalida")
            };

            return currentEnvironment.AssignVariable(id, newValue, context.Start.Line, context.Start.Column);
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitRelational
    public override ValueWrapper VisitRelational(LanguageParser.RelationalContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));

        var operador = context.op.Text;

        try
        {
            return (left, right, operador) switch
            {
                // ******** int ********
                // IntValue < IntValue
                (IntValue l, IntValue r, "<") => new BoolValue(l.Value < r.Value),
                // IntValue > IntValue
                (IntValue l, IntValue r, ">") => new BoolValue(l.Value > r.Value),
                // IntValue <= IntValue
                (IntValue l, IntValue r, "<=") => new BoolValue(l.Value <= r.Value),
                // IntValue >= IntValue
                (IntValue l, IntValue r, ">=") => new BoolValue(l.Value >= r.Value),
                // IntValue > DecimalValue
                (IntValue l, DecimalValue r, ">") => new BoolValue(l.Value > r.Value),
                // IntValue < DecimalValue
                (IntValue l, DecimalValue r, "<") => new BoolValue(l.Value < r.Value),
                // IntValue >= DecimalValue
                (IntValue l, DecimalValue r, ">=") => new BoolValue(l.Value >= r.Value),
                // IntValue <= DecimalValue
                (IntValue l, DecimalValue r, "<=") => new BoolValue(l.Value <= r.Value),

                // ******** decimal ********
                // DecimalValue < DecimalValue
                (DecimalValue l, DecimalValue r, "<") => new BoolValue(l.Value < r.Value),
                // DecimalValue > DecimalValue
                (DecimalValue l, DecimalValue r, ">") => new BoolValue(l.Value > r.Value),
                // DecimalValue <= DecimalValue
                (DecimalValue l, DecimalValue r, "<=") => new BoolValue(l.Value <= r.Value),
                // DecimalValue >= DecimalValue
                (DecimalValue l, DecimalValue r, ">=") => new BoolValue(l.Value >= r.Value),
                // DecimalValue > IntValue
                (DecimalValue l, IntValue r, ">") => new BoolValue(l.Value > r.Value),
                // DecimalValue < IntValue
                (DecimalValue l, IntValue r, "<") => new BoolValue(l.Value < r.Value),
                // DecimalValue >= IntValue
                (DecimalValue l, IntValue r, ">=") => new BoolValue(l.Value >= r.Value),
                // DecimalValue <= IntValue
                (DecimalValue l, IntValue r, "<=") => new BoolValue(l.Value <= r.Value),

                // ******** rune ********
                // RuneValue > RuneValue
                (RuneValue l, RuneValue r, ">") => new BoolValue(l.Value > r.Value),
                // RuneValue < RuneValue
                (RuneValue l, RuneValue r, "<") => new BoolValue(l.Value < r.Value),
                // RuneValue >= RuneValue
                (RuneValue l, RuneValue r, ">=") => new BoolValue(l.Value >= r.Value),
                // RuneValue <= RuneValue
                (RuneValue l, RuneValue r, "<=") => new BoolValue(l.Value <= r.Value),

                // Comparacion

                // ******** nil ********
                // nil == nil
                (NilValue _, NilValue _, "==") => new BoolValue(true),
                // nil != nil
                (NilValue _, NilValue _, "!=") => new BoolValue(false),
                // struct == nil
                (StructValue _, NilValue _, "==") => new BoolValue(false),
                // nil == struct
                (NilValue _, StructValue _, "==") => new BoolValue(false),
                // struct != nil
                (StructValue _, NilValue _, "!=") => new BoolValue(true),
                // nil != struct
                (NilValue _, StructValue _, "!=") => new BoolValue(true),
                // NilValue == IntValue
                (NilValue _, IntValue _, "==") => new BoolValue(false),
                // NilValue == DecimalValue
                (NilValue _, DecimalValue _, "==") => new BoolValue(false),
                // NilValue == BoolValue
                (NilValue _, BoolValue _, "==") => new BoolValue(false),
                // NilValue == StringValue
                (NilValue _, StringValue _, "==") => new BoolValue(false),
                // NilValue == RuneValue
                (NilValue _, RuneValue _, "==") => new BoolValue(false),

                // ******** int ********
                // IntValue == IntValue
                (IntValue l, IntValue r, "==") => new BoolValue(l.Value == r.Value),
                // IntValue != IntValue
                (IntValue l, IntValue r, "!=") => new BoolValue(l.Value != r.Value),
                // IntValue == DecimalValue
                (IntValue l, DecimalValue r, "==") => new BoolValue(l.Value == r.Value),
                // IntValue != DecimalValue
                (IntValue l, DecimalValue r, "!=") => new BoolValue(l.Value != r.Value),
                // IntValue == NilValue
                (IntValue _, NilValue _, "==") => new BoolValue(false),

                // ******** decimal ********
                // DecimalValue == DecimalValue
                (DecimalValue l, DecimalValue r, "==") => new BoolValue(l.Value == r.Value),
                // DecimalValue != DecimalValue
                (DecimalValue l, DecimalValue r, "!=") => new BoolValue(l.Value != r.Value),
                // DecimalValue == IntValue
                (DecimalValue l, IntValue r, "==") => new BoolValue(l.Value == r.Value),
                // DecimalValue != IntValue
                (DecimalValue l, IntValue r, "!=") => new BoolValue(l.Value != r.Value),
                // DecimalValue == NilValue
                (DecimalValue _, NilValue _, "==") => new BoolValue(false),

                // ******** bool ********
                // BoolValue == BoolValue
                (BoolValue l, BoolValue r, "==") => new BoolValue(l.Value == r.Value),
                // BoolValue != BoolValue
                (BoolValue l, BoolValue r, "!=") => new BoolValue(l.Value != r.Value),
                // BoolValue == NilValue
                (BoolValue _, NilValue _, "==") => new BoolValue(false),

                // ******** string ********
                // StringValue == StringValue
                (StringValue l, StringValue r, "==") => new BoolValue(l.Value == r.Value),
                // StringValue != StringValue
                (StringValue l, StringValue r, "!=") => new BoolValue(l.Value != r.Value),
                // StringValue == NilValue
                (StringValue _, NilValue _, "==") => new BoolValue(false),

                // ******** rune ********
                // RuneValue == RuneValue
                (RuneValue l, RuneValue r, "==") => new BoolValue(l.Value == r.Value),
                // RuneValue != RuneValue
                (RuneValue l, RuneValue r, "!=") => new BoolValue(l.Value != r.Value),
                // RuneValue == NilValue
                (RuneValue _, NilValue _, "==") => new BoolValue(false),

                _ => throw new System.Exception("Operacion invalida")
            };
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitComparison
    

    // VisitLogical
    public override ValueWrapper VisitLogical(LanguageParser.LogicalContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));

        var operador = context.op.Text;

        try
        {
            return (left, right, operador) switch
            {
                // BoolValue && BoolValue
                (BoolValue l, BoolValue r, "&&") => new BoolValue(l.Value && r.Value),
                // BoolValue || BoolValue
                (BoolValue l, BoolValue r, "||") => new BoolValue(l.Value || r.Value),

                _ => throw new System.Exception($"Operacion invalida {left.GetType()} {operador} {right.GetType()}")
            };
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitNot
    public override ValueWrapper VisitNot(LanguageParser.NotContext context)
    {
        ValueWrapper value = Visit(context.expr());

        try
        {
            return value switch
            {
                // !BoolValue
                BoolValue b => new BoolValue(!b.Value),
                _ => throw new System.Exception($"Operacion invalida !{value.GetType()}")
            };
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // ******** Sentencias de control ********

    // VisitIfStmt
    public override ValueWrapper VisitIfStmt(LanguageParser.IfStmtContext context)
    {
        ValueWrapper condition = Visit(context.expr());

        try
        {
            // validar que la condicion sea booleana 
            if (condition is not BoolValue)
            {
                errores.Add(new Errores("Semantico", "La condicion del if debe ser de tipo booleana", context.Start.Line, context.Start.Column));
            }

            if ((condition as BoolValue).Value)
            {
                Visit(context.stmt(0));
            }
            else if (context.stmt().Length > 1) // si hay un else
            {
                Visit(context.stmt(1));
            }
        }
        catch (Exception ex) when (!(ex is BreakException || ex is ContinueException || ex is ReturnException))
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
        }

        return defaultValue;
    }

    // VisitSwitchStmt
    public override ValueWrapper VisitSwitchStmt(LanguageParser.SwitchStmtContext context)
    {
        try
        {
            bool Matched = false;
            ValueWrapper switchValue = Visit(context.expr(0));

            // Obtener todos los casos del switch
            var children = context.children;

            // Recorrer los hijos
            for (int i = 0; i < children.Count; i++)
            {
                // Si se encuentra un case
                if (children[i].GetText() == "case")
                {
                    // El siguiente hijo es el valor del case
                    ValueWrapper caseValue = Visit(children[i + 1] as LanguageParser.ExprContext);

                    // Verificar si los valores coinciden
                    if (switchValue.Equals(caseValue))
                    {
                        Matched = true;
                        i += 3;
                        try
                        {
                            // Ejecutar las instrucciones hasta encontrar otro case o el final
                            while (i < children.Count && children[i].GetText() != "case" && children[i].GetText() != "default")
                            {
                                if (children[i] is LanguageParser.StmtContext stmtContext)
                                {
                                    Visit(stmtContext);
                                }
                                i++;
                            }
                        }
                        catch (BreakException)
                        {
                            // break explicito
                            break;
                        }
                        break; // break implicito
                    }
                }
                // Si se encuentra un default
                else if (children[i].GetText() == "default" && !Matched)
                {
                    i += 2;

                    try
                    {
                        // Ejecutar las instrucciones
                        while (i < children.Count && children[i].GetText() != "}")
                        {
                            if (children[i] is LanguageParser.StmtContext stmtContext)
                            {
                                Visit(stmtContext);
                            }
                            i++;
                        }
                    }
                    catch (BreakException)
                    {
                        // Si se encuentra un break, salir del switch
                        break;
                    }


                }
            }
        }
        catch (Exception ex) when (!(ex is BreakException || ex is ContinueException || ex is ReturnException))
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
        }

        return defaultValue;
    }

    // VisitIncdec
    public override ValueWrapper VisitIncdec(LanguageParser.IncdecContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper value = currentEnvironment.GetVariable(id, context.Start.Line, context.Start.Column);

        try
        {
            if (value is IntValue)
            {
                if (context.op.Text == "++")
                {
                    value = new IntValue((value as IntValue).Value + 1);
                }
                else
                {
                    value = new IntValue((value as IntValue).Value - 1);
                }
            }
            else if (value is DecimalValue)
            {
                if (context.op.Text == "++")
                {
                    value = new DecimalValue((value as DecimalValue).Value + 1);
                }
                else
                {
                    value = new DecimalValue((value as DecimalValue).Value - 1);
                }
            }
            else
            {
                throw new Exception("Error: Solo se pueden incrementar o decrementar variables de tipo int o float64.");
            }

            return currentEnvironment.AssignVariable(id, value, context.Start.Line, context.Start.Column);
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitIncDecStmt


    // ******** Ciclos ********

    // VisitForWhileStmt
    public override ValueWrapper VisitForWhileStmt(LanguageParser.ForWhileStmtContext context)
    {
        try
        {
            ValueWrapper condition = Visit(context.expr());

            // Verificar que sea de tipo booleano
            if (condition is not BoolValue)
            {
                throw new Exception("La condicion del for debe ser de tipo booleana");
            }

            // Mientras la condicion sea verdadera

            try
            {
                while ((condition as BoolValue).Value)
                {
                    Visit(context.stmt()); // Bloque de instrucciones
                    condition = Visit(context.expr()); // volver a evaluar la condicion



                }
            }
            catch (BreakException)
            {
                // No hacer nada
            }
            catch (ContinueException)
            {
                // pasar a la siguiente iteracion
                Visit(context.expr());



                VisitForWhileStmt(context);
            }
            return defaultValue;
        }
        catch (Exception ex) when (!(ex is BreakException || ex is ContinueException) || ex is ReturnException)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitForClassicStmt
    public override ValueWrapper VisitForClassicStmt(LanguageParser.ForClassicStmtContext context)
    {
        try
        {
            Environment previousEnvironment = currentEnvironment;
            currentEnvironment = new Environment(currentEnvironment);

            Visit(context.forInit());

            VisitForBody(context);

            currentEnvironment = previousEnvironment;
            return defaultValue;
        }
        catch (Exception ex) when (!(ex is BreakException || ex is ContinueException))
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }



    }

    // VisitForBody
    public void VisitForBody(LanguageParser.ForClassicStmtContext context)
    {
        ValueWrapper condition = Visit(context.expr(0));
        var LastEnvironment = currentEnvironment;

        if (condition is not BoolValue)
        {
            throw new Exception("La condicion del for debe ser de tipo booleana");
        }

        try
        {
            while (condition is BoolValue boolCondition && boolCondition.Value)
            {
                Visit(context.stmt()); // Bloque de instrucciones
                Visit(context.expr(1)); // Incremento
                condition = Visit(context.expr(0)); // volver a evaluar la condicion
            }
        }
        catch (BreakException)
        {
            currentEnvironment = LastEnvironment;
        }
        catch (ContinueException)
        {
            currentEnvironment = LastEnvironment;
            Visit(context.expr(1));
            VisitForBody(context);
        }
    }

    // VisitForRangeStmt
    public override ValueWrapper VisitForRangeStmt(LanguageParser.ForRangeStmtContext context)
    {
        try
        {
            Environment previousEnvironment = currentEnvironment;
            currentEnvironment = new Environment(currentEnvironment);

            string indexID = context.ID(0).GetText();  // índice
            string valueID = context.ID(1).GetText();  // valor
            ValueWrapper sliceValue = Visit(context.expr());

            // Verificar que sea un slice
            if (sliceValue is not SliceValue slice)
            {
                throw new Exception("Error: La expresión del for range debe ser un slice");
            }

            try
            {
                // Recorrer el slice
                for (int i = 0; i < slice.Values.Count; i++)
                {
                    // Declarar o actualizar índice
                    if (!currentEnvironment.variables.ContainsKey(indexID))
                    {
                        currentEnvironment.DeclareVariable(indexID, new IntValue(i), context.Start.Line, context.Start.Column);
                    }
                    else
                    {
                        currentEnvironment.AssignVariable(indexID, new IntValue(i), context.Start.Line, context.Start.Column);
                    }

                    // Declarar o actualizar valor
                    if (!currentEnvironment.variables.ContainsKey(valueID))
                    {
                        currentEnvironment.DeclareVariable(valueID, slice.Values[i], context.Start.Line, context.Start.Column);
                    }
                    else
                    {
                        currentEnvironment.AssignVariable(valueID, slice.Values[i], context.Start.Line, context.Start.Column);
                    }

                    Visit(context.stmt());
                }
            }
            catch (BreakException)
            {
                // salir del ciclo
            }
            catch (ContinueException)
            {
                // Continuar con la siguiente iteración
            }

            currentEnvironment = previousEnvironment;
            return defaultValue;
        }
        catch (Exception ex) when (!(ex is BreakException || ex is ContinueException) || ex is ReturnException)
        {
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }


    /* ***** Slices ***** */

    // VisitSlice1Stmt - Declaración con inicialización de valores
    public override ValueWrapper VisitSlice1Stmt(LanguageParser.Slice1StmtContext context)
    {
        try
        {
            string id = context.ID().GetText();
            string type = context.type().GetText();
            var values = new List<ValueWrapper>();

            simbolos.AddSymbol(new Symbol(id, "Slice", type, context.Start.Line, context.Start.Column));

            // Recoger los valores iniciales
            foreach (var expr in context.exprList().expr())
            {
                var value = Visit(expr);
                // Verificar que el valor sea del tipo correcto
                if (!IsCompatibleType(value, type))
                {
                    throw new Exception($"Error: El valor {value} no es compatible con el tipo {type}");
                }
                values.Add(value);
            }

            currentEnvironment.DeclareSliceWithValues(id, type, values);
            return defaultValue;
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitSlice2Stmt - Declaración de slice vacío
    public override ValueWrapper VisitSlice2Stmt(LanguageParser.Slice2StmtContext context)
    {
        try
        {
            string id = context.ID().GetText();
            string type = context.type().GetText();
            currentEnvironment.DeclareSlice(id, type);

            simbolos.AddSymbol(new Symbol(id, "Slice", type, context.Start.Line, context.Start.Column));

            return defaultValue;
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitSlice3Stmt - Asignación de valores
    public override ValueWrapper VisitSlice3Stmt(LanguageParser.Slice3StmtContext context)
    {
        try
        {
            string id = context.ID().GetText();
            ValueWrapper indexValue = Visit(context.expr(0));
            ValueWrapper value = Visit(context.expr(1));

            if (indexValue is not IntValue)
            {
                throw new Exception("Error: El índice debe ser un entero");
            }

            int index = (indexValue as IntValue).Value;
            var slice = currentEnvironment.GetSlice(id);

            if (!IsCompatibleType(value, slice.Type))
            {
                throw new Exception($"Error: No se puede asignar un valor de tipo {value.GetType()} a un slice de tipo {slice.Type}");
            }

            currentEnvironment.SetSliceElement(id, index, value);
            return defaultValue;
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitSlice6Stmt - Acceso a vector
    public override ValueWrapper VisitSlice6Stmt(LanguageParser.Slice6StmtContext context)
    {
        try
        {
            string id = context.ID().GetText();
            ValueWrapper indexValue = Visit(context.expr());

            // Verificar que el índice sea un entero
            if (indexValue is not IntValue)
            {
                throw new Exception("Error: El índice debe ser un entero");
            }

            // Obtener el slice
            SliceValue slice = currentEnvironment.GetSlice(id);
            int index = (indexValue as IntValue).Value;

            // Verificar que el índice esté en rango
            if (index < 0 || index >= slice.Values.Count)
            {
                throw new Exception($"Error: Índice {index} fuera de rango");
            }

            // Retornar el valor en la posición indicada
            return slice.Values[index];
        }
        catch (Exception ex)
        {
            System.Console.WriteLine(ex.Message);
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitSlice4Stmt - Declaración de slice multidimensional con valores
    public override ValueWrapper VisitSlice4Stmt(LanguageParser.Slice4StmtContext context)
    {
        try
        {
            string id = context.ID().GetText();
            string type = context.type().GetText();
            var outerSlice = new SliceValue($"[]{type}");

            simbolos.AddSymbol(new Symbol(id, "Slice", type, context.Start.Line, context.Start.Column));

            // Procesar cada arrayContent que representa una fila
            foreach (var arrayContent in context.arrayContent())
            {
                var rowValues = new List<ValueWrapper>();
                foreach (var expr in arrayContent.exprList().expr())
                {
                    var value = Visit(expr);
                    if (!IsCompatibleType(value, type))
                    {
                        throw new Exception($"Error: El valor {value} no es compatible con el tipo {type}");
                    }
                    rowValues.Add(value);
                }
                outerSlice.Values.Add(new SliceValue(type, rowValues));
            }

            currentEnvironment.DeclareVariable(id, outerSlice, context.Start.Line, context.Start.Column);
            return defaultValue;
        }
        catch (Exception ex)
        {
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitSlice5Stmt - Asignación de valores en slice multidimensional
    public override ValueWrapper VisitSlice5Stmt(LanguageParser.Slice5StmtContext context)
    {
        try
        {
            string id = context.ID().GetText();
            ValueWrapper row = Visit(context.expr(0));
            ValueWrapper col = Visit(context.expr(1));
            ValueWrapper value = Visit(context.expr(2));

            if (row is not IntValue || col is not IntValue)
            {
                throw new Exception("Error: Los índices deben ser enteros");
            }

            var matrix = currentEnvironment.GetVariable(id, context.Start.Line, context.Start.Column);
            if (matrix is not SliceValue outerSlice)
            {
                throw new Exception($"Error: {id} no es un slice multidimensional");
            }

            int rowIndex = ((IntValue)row).Value;
            int colIndex = ((IntValue)col).Value;

            if (rowIndex < 0 || rowIndex >= outerSlice.Values.Count)
            {
                throw new Exception($"Error: Índice de fila {rowIndex} fuera de rango");
            }

            var innerSlice = outerSlice.Values[rowIndex] as SliceValue;
            if (colIndex < 0 || colIndex >= innerSlice.Values.Count)
            {
                throw new Exception($"Error: Índice de columna {colIndex} fuera de rango");
            }

            if (!IsCompatibleType(value, innerSlice.Type))
            {
                throw new Exception($"Error: No se puede asignar un valor de tipo {value.GetType()} a un slice de tipo {innerSlice.Type}");
            }

            // Actualizar el valor
            var newInnerSlice = innerSlice.SetValue(colIndex, value);
            var newOuterSlice = outerSlice.SetValue(rowIndex, newInnerSlice);
            currentEnvironment.AssignVariable(id, newOuterSlice, context.Start.Line, context.Start.Column);

            return defaultValue;
        }
        catch (Exception ex)
        {
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitSlice7Stmt - Acceso a slice multidimensional
    public override ValueWrapper VisitSlice7Stmt(LanguageParser.Slice7StmtContext context)
    {
        try
        {
            string id = context.ID().GetText();
            ValueWrapper row = Visit(context.expr(0));
            ValueWrapper col = Visit(context.expr(1));

            if (row is not IntValue || col is not IntValue)
            {
                throw new Exception("Error: Los índices deben ser enteros");
            }

            var matrix = currentEnvironment.GetVariable(id, context.Start.Line, context.Start.Column);
            if (matrix is not SliceValue outerSlice)
            {
                throw new Exception($"Error: {id} no es un slice multidimensional");
            }

            int rowIndex = ((IntValue)row).Value;
            int colIndex = ((IntValue)col).Value;

            if (rowIndex < 0 || rowIndex >= outerSlice.Values.Count)
            {
                throw new Exception($"Error: Índice de fila {rowIndex} fuera de rango");
            }

            var innerSlice = outerSlice.Values[rowIndex] as SliceValue;
            if (colIndex < 0 || colIndex >= innerSlice.Values.Count)
            {
                throw new Exception($"Error: Índice de columna {colIndex} fuera de rango");
            }

            return innerSlice.Values[colIndex];
        }
        catch (Exception ex)
        {
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // Método auxiliar para verificar compatibilidad de tipos
    public bool IsCompatibleType(ValueWrapper value, string type)
    {
        return (type, value) switch
        {
            ("int", IntValue _) => true,
            ("float64", DecimalValue _) => true,
            ("float64", IntValue _) => true,
            ("string", StringValue _) => true,
            ("bool", BoolValue _) => true,
            ("rune", RuneValue _) => true,
            (_, StructValue s) => s.GetType().Name == type,
            (_, NilValue _) => true,
            _ => false
        };
    }

    // ******** sentencias de transferencia ********

    // VisitBreakStmt
    public override ValueWrapper VisitBreakStmt(LanguageParser.BreakStmtContext context)
    {
        throw new BreakException();
    }

    // VisitContinueStmt
    public override ValueWrapper VisitContinueStmt(LanguageParser.ContinueStmtContext context)
    {
        throw new ContinueException();
    }

    // VisitReturnStmt
    public override ValueWrapper VisitReturnStmt(LanguageParser.ReturnStmtContext context)
    {
        ValueWrapper value = defaultValue;
        if (context.expr() != null)
        {
            value = Visit(context.expr());
        }

        throw new ReturnException(value);
    }

    // VisitCallExpr

    public override ValueWrapper VisitCallExpr(LanguageParser.CallExprContext context)
{
    ValueWrapper callee = Visit(context.expr());

    foreach (var action in context.call())
    {
        if (action is LanguageParser.FuncCallContext funcall)
        {
            if (callee is FunctionValue functionValue)
            {
                var args = new List<ValueWrapper>();
                if (funcall.exprList() != null)
                {
                    foreach (var expr in funcall.exprList().expr())
                    {
                        args.Add(Visit(expr));
                    }
                }
                callee = functionValue.invocable.Invoke(args, this);
            }
            else
            {
                throw new Exception("Error: No se puede llamar a un valor que no es una función");
            }
        }
    }

    return callee;
}

    // VisitCallEmbebida
    public ValueWrapper VisitCallEmbebida(Invocable invocable, LanguageParser.ExprListContext context)
    {
        List<ValueWrapper> arguments = new List<ValueWrapper>();

        if (context != null)
        {
            foreach (var expr in context.expr())
            {
                arguments.Add(Visit(expr));
            }
        }

        if (context != null && arguments.Count != invocable.Arity())
        {
            throw new Exception($"Error: Se esperaban {invocable.Arity()} argumentos, pero se recibieron {arguments.Count}");
        }

        return invocable.Invoke(arguments, this);
    }

    // VisitAtioCall
    public override ValueWrapper VisitAtoiCall(LanguageParser.AtoiCallContext context)
    {
        var atoiFunc = currentEnvironment.GetVariable("strconv.Atoi", context.Start.Line, context.Start.Column);
        if (atoiFunc is FunctionValue functionValue)
        {
            return VisitCall(functionValue.invocable, context.callEmbebida().exprList());
        }
        throw new Exception("Error: strconv.Atoi no está definida");
    }

    // VisitParseFloatCall
    public override ValueWrapper VisitParseFloatCall(LanguageParser.ParseFloatCallContext context)
    {
        var parseFloatFunc = currentEnvironment.GetVariable("strconv.ParseFloat", context.Start.Line, context.Start.Column);
        if (parseFloatFunc is FunctionValue functionValue)
        {
            return VisitCall(functionValue.invocable, context.callEmbebida().exprList());
        }
        throw new Exception("Error: strconv.ParseFloat no está definida");
    }

    // VisitTypeOfCall
    public override ValueWrapper VisitTypeOfCall(LanguageParser.TypeOfCallContext context)
    {
        try
        {
            // Obtener la función TypeOf
            var typeOfFunc = currentEnvironment.GetVariable("reflect.TypeOf", context.Start.Line, context.Start.Column);
            if (typeOfFunc is FunctionValue functionValue)
            {
                return VisitCall(functionValue.invocable, context.callEmbebida().exprList());
            }
            throw new Exception("Error: reflect.TypeOf no está definida");
        }
        catch (Exception ex)
        {
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitIndexCall
    public override ValueWrapper VisitIndexCall(LanguageParser.IndexCallContext context)
    {
        try
        {
            // Obtener la función slices.Index
            var indexFunc = currentEnvironment.GetVariable("slices.Index", context.Start.Line, context.Start.Column);


            if (indexFunc is FunctionValue functionValue)
            {
                return VisitCall(functionValue.invocable, context.callEmbebida().exprList());
            }
            throw new Exception("Error: slices.Index no está definida");
        }
        catch (Exception ex)
        {
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitJoinCall
    public override ValueWrapper VisitJoinCall(LanguageParser.JoinCallContext context)
    {
        try
        {
            var joinFunc = currentEnvironment.GetVariable("strings.Join", context.Start.Line, context.Start.Column);
            if (joinFunc is FunctionValue functionValue)
            {
                return VisitCall(functionValue.invocable, context.callEmbebida().exprList());
            }
            throw new Exception("Error: strings.Join no está definida");
        }
        catch (Exception ex)
        {
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitLenCall
    public override ValueWrapper VisitLenCall(LanguageParser.LenCallContext context)
    {
        try
        {
            var lenFunc = currentEnvironment.GetVariable("len", context.Start.Line, context.Start.Column);
            if (lenFunc is FunctionValue functionValue)
            {
                return VisitCall(functionValue.invocable, context.callEmbebida().exprList());
            }
            throw new Exception("Error: len no está definida");
        }
        catch (Exception ex)
        {
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitAppendCall
    public override ValueWrapper VisitAppendCall(LanguageParser.AppendCallContext context)
    {
        try
        {
            var appendFunc = currentEnvironment.GetVariable("append", context.Start.Line, context.Start.Column);
            if (appendFunc is FunctionValue functionValue)
            {
                return VisitCall(functionValue.invocable, context.callEmbebida().exprList());
            }
            throw new Exception("Error: append no está definida");
        }
        catch (Exception ex)
        {
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitCall
    public ValueWrapper VisitCall(Invocable invocable, LanguageParser.ExprListContext context)
    {
        List<ValueWrapper> arguments = new List<ValueWrapper>();

        if (context != null)
        {
            foreach (var expr in context.expr())
            {
                arguments.Add(Visit(expr));
            }
        }

        if (context != null && arguments.Count != invocable.Arity())
        {
            throw new Exception($"Error: Se esperaban {invocable.Arity()} argumentos, pero se recibieron {arguments.Count}");
        }

        return invocable.Invoke(arguments, this);
    }

    // ******** Funciones ********

    // VisitFuncDCl
    public override ValueWrapper VisitFuncDCl(LanguageParser.FuncDClContext context)
{
    try
    {
        string functionName = context.ID().GetText();
        var function = new ForeignFunction(currentEnvironment, context);
        
        // Añadir la función al entorno
        currentEnvironment.DeclareVariable(functionName, 
            new FunctionValue(function, functionName),
            context.Start.Line, context.Start.Column);
            
        return defaultValue;
    }
    catch (Exception ex)
    {
        errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
        return defaultValue;
    }
}

    // ******** structs ********

    // VisitStructDcl

    public override ValueWrapper VisitStructDcl(LanguageParser.StructDclContext context)
    {
        try
        {
            string structName = context.ID().GetText();
            var structType = new Struct(structName);

            // Procesar campos
            foreach (var field in context.structBody())
            {
                var varDcl = field.varDCLstruct();
                string fieldName = varDcl.ID(0).GetText();
                string fieldType;

                // Si hay dos ID el segundo es el tipo del struct
                if (varDcl.ID().Length > 1)
                {
                    fieldType = varDcl.ID(1).GetText();
                }
                else
                {
                    fieldType = varDcl.type().GetText();
                }

                structType.Fields[fieldName] = fieldType;
            }

            // Registrar el tipo de struct
            currentEnvironment.DeclareVariable(structName, new StructValue(structType),
                context.Start.Line, context.Start.Column);

            return defaultValue;
        }
        catch (Exception ex)
        {
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    // VisitStructInst
    public override ValueWrapper VisitStructInst(LanguageParser.StructInstContext context)
    {
        try
        {
            string structType = context.ID(0).GetText();
            var structVar = currentEnvironment.GetVariable(structType, context.Start.Line, context.Start.Column);

            if (structVar is not StructValue structDef)
            {
                throw new Exception($"Error: {structType} no es un struct");
            }

            var newInstance = structDef.GetType().CreateInstance();

            // Inicializar campos
            for (int i = 1; i < context.ID().Length; i++)
            {
                string fieldName = context.ID(i).GetText();
                ValueWrapper value = Visit(context.expr(i - 1));

                if (!structDef.GetType().Fields.ContainsKey(fieldName))
                {
                    throw new Exception($"Error: El campo '{fieldName}' no existe en el struct '{structType}'");
                }

                // Manejar asignación de nil explícitamente
                if (value is NilValue && !IsBuiltInType(structDef.GetType().Fields[fieldName]))
                {
                    newInstance.Set(fieldName, value);
                    continue;
                }

                // Verificar tipo y asignar
                if (!IsCompatibleType(value, structDef.GetType().Fields[fieldName]))
                {
                    throw new Exception($"Tipo incompatible para el campo '{fieldName}'");
                }

                newInstance.Set(fieldName, value);
            }

            return newInstance;
        }
        catch (Exception ex)
        {
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

    private bool IsBuiltInType(string type)
    {
        return type switch
        {
            "int" or "float64" or "string" or "bool" or "rune" => true,
            _ => false
        };
    }

    // VisitvarDCLstruct
    public override ValueWrapper VisitVarDCLstruct(LanguageParser.VarDCLstructContext context)
    {
        try
        {
            string id = context.ID(0).GetText();
            string type = context.type().GetText();
            var structValue = currentEnvironment.GetVariable(type, context.Start.Line, context.Start.Column);

            if (structValue is not StructValue structType)
            {
                throw new Exception($"Error: {type} no es un struct");
            }

            currentEnvironment.DeclareVariable(id, structValue, context.Start.Line, context.Start.Column);
            return defaultValue;
        }
        catch (Exception ex)
        {
            errores.Add(new Errores("Semantico", ex.Message, context.Start.Line, context.Start.Column));
            return defaultValue;
        }
    }

}