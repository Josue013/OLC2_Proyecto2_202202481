using System;
using System.Collections.Generic;
using System.IO;
using System.Text;
using Antlr4.Runtime;

namespace api.compiler
{
    public class ErrorReportGenerator
{
    private readonly List<Errores> errores;

    public ErrorReportGenerator()
    {
        errores = new List<Errores>();
    }

    public void AddError(Errores error)
    {
        errores.Add(error);
    }

    public string GenerateHTML()
    {
        var sb = new StringBuilder();
        sb.AppendLine(@"<!DOCTYPE html>
<html>
<head>
    <title>Reporte de Errores</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h2 {
            color: #2c3e50;
            text-align: center;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #3498db;
            color: white;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>
    <h2>Reporte de Errores</h2>");

        // Tabla de errores
        if (errores.Count > 0)
        {
            sb.AppendLine(@"
    <table>
        <tr>
            <th>#</th>
            <th>Tipo</th>
            <th>Descripcion</th>
            <th>Linea</th>
            <th>Columna</th>
        </tr>");

            for (int i = 0; i < errores.Count; i++)
            {
                var error = errores[i];
                sb.AppendLine($@"
        <tr>
            <td>{i + 1}</td>
            <td>{error.type}</td>
            <td>{error.desc}</td>
            <td>{error.line}</td>
            <td>{error.column}</td>
        </tr>");
            }

            sb.AppendLine("    </table>");
        }
        else
        {
            sb.AppendLine("<p style='text-align: center;'>No se encontraron errores.</p>");
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