public static class Utils
{
    public static List<byte> StringTo1ByteArray(string str)
    {
        var resultado = new List<byte>();
        int elementIndex = 0;

        while (elementIndex < str.Length)
        {
            // Verificar si es una secuencia de escape
            if (str[elementIndex] == '\\' && elementIndex + 1 < str.Length)
            {
                elementIndex++; // Avanzar al siguiente caracter después del '\'
                switch (str[elementIndex])
                {
                    case 'n':  // Nueva línea
                        resultado.Add(10);  // ASCII LF (Line Feed)
                        break;
                    case 't':  // Tabulación
                        resultado.Add(9);   // ASCII TAB
                        break;
                    case 'r':  // Retorno de carro
                        resultado.Add(13);  // ASCII CR (Carriage Return)
                        break;
                    case 'b':  // Retroceso
                        resultado.Add(8);   // ASCII BS (Backspace)
                        break;
                    case '\\': // Barra invertida
                        resultado.Add(92);  // ASCII '\'
                        break;
                    case '"':  // Comilla doble
                        resultado.Add(34);  // ASCII '"'
                        break;
                    case '\'': // Comilla simple
                        resultado.Add(39);  // ASCII '''
                        break;
                    default:   // Si no es una secuencia válida, mantener el caracter literal
                        resultado.Add((byte)str[elementIndex]);
                        break;
                }
            }
            else
            {
                resultado.Add((byte)str[elementIndex]);
            }
            elementIndex++;
        }
        
        resultado.Add(0); // Null terminator
        return resultado;
    }
}