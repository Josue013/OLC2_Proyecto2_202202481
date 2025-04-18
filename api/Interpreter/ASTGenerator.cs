using System;
using System.IO;
using Antlr4.Runtime;
using Antlr4.Runtime.Tree;
using analyzer;

namespace api.compiler
{
    public class ASTGenerator
    {
        private int nodeId = 0;

        public string GenerateAST(IParseTree tree, LanguageParser parser)
        {
            nodeId = 0;
            return "digraph G {\n" + GenerateNodes(tree, parser) + "}";
        }

        private string GenerateNodes(IParseTree tree, LanguageParser parser, int parentId = -1)
        {
            int currentId = nodeId++;
            string label = GetNodeLabel(tree, parser);
            string dot = $"  node{currentId} [label=\"{label}\"];\n";

            if (parentId != -1)
            {
                dot += $"  node{parentId} -> node{currentId};\n";
            }

            for (int i = 0; i < tree.ChildCount; i++)
            {
                dot += GenerateNodes(tree.GetChild(i), parser, currentId);
            }

            return dot;
        }

        private string GetNodeLabel(IParseTree tree, LanguageParser parser)
        {
            if (tree is ParserRuleContext ctx)
            {
                return parser.RuleNames[ctx.RuleIndex];
            }
            else if (tree is ITerminalNode terminal)
            {
                string text = terminal.GetText();
                // Escapar caracteres especiales para DOT
                text = text.Replace("\\", "\\\\")  // Primero escapar los backslashes
                          .Replace("\"", "\\\"")
                          .Replace("\n", "\\n")
                          .Replace("\r", "\\r")
                          .Replace("\t", "\\t");
                return text;
            }
            return tree.GetText();
        }

        public void SaveToFile(string dot, string filename)
        {
            File.WriteAllText(filename, dot);
        }

        public void GenerateImage(string dotFile, string outputImage)
        {
            var process = new System.Diagnostics.Process
            {
                StartInfo = new System.Diagnostics.ProcessStartInfo
                {
                    FileName = "dot",
                    Arguments = $"-Tsvg {dotFile} -o {outputImage}",
                    RedirectStandardOutput = true,
                    UseShellExecute = false,
                    CreateNoWindow = true
                }
            };

            process.Start();
            process.WaitForExit();
        }
    }
}