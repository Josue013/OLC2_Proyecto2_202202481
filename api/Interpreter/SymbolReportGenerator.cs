using System.Text;

namespace api.compiler
{
  public class SymbolReportGenerator
  {
    private readonly List<Symbol> symbols;

    public SymbolReportGenerator()
    {
      symbols = new List<Symbol>();
    }

    public void AddSymbol(Symbol symbol)
    {
      symbols.Add(symbol);
    }

    public string GenerateHTML()
    {
      var sb = new StringBuilder();
      sb.AppendLine(@"<!DOCTYPE html>
<html>
<head>
    <title>Tabla de Simbolos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f5f5f5;
        }
        h2 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
            box-shadow: 0 1px 3px rgba(0,0,0,0.2);
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #3498db;
            color: white;
            font-weight: bold;
        }
        tr:hover {
            background-color: #f9f9f9;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h2>Tabla de Simbolos</h2>");

      if (symbols.Count > 0)
      {
        sb.AppendLine(@"
    <table>
        <tr>
            <th>ID</th>
            <th>Tipo Simbolo</th>
            <th>Tipo Dato</th>
            <th>Linea</th>
            <th>Columna</th>
        </tr>");

        foreach (var symbol in symbols)
        {
          sb.AppendLine($@"
        <tr>
            <td>{symbol.Id}</td>
            <td>{symbol.TipoSimbolo}</td>
            <td>{symbol.TipoDato}</td>
            <td>{symbol.Linea}</td>
            <td>{symbol.Columna}</td>
        </tr>");
        }

        sb.AppendLine("    </table>");
      }
      else
      {
        sb.AppendLine("<p style='text-align: center;'>No se encontraron símbolos.</p>");
      }

      sb.AppendLine("</body>\n</html>");
      return sb.ToString();
    }

    public void SaveToFile(string filename)
    {
      string html = GenerateHTML();
      File.WriteAllText(filename, html);
    }

  }
}