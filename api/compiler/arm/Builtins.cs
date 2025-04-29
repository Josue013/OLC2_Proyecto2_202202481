using System;
using System.Collections.Generic;

namespace api.compiler.arm
{
    public static class Builtins
    {
        public static void ConcatString(ArmGenerator generator, string leftStringReg, string rightStringReg)
        {
            // X0 -> dirección en heap de la primera cadena (leftStringReg)
            // X1 -> dirección en heap de la segunda cadena (rightStringReg)
            // Resultado: push en el stack la dirección en heap de la cadena concatenada

            generator.Comment("String concatenation");
            
            // Guardar en el stack la dirección del heap donde empezará la cadena concatenada
            generator.Comment("Saving the heap address of the concatenated string on stack");
            generator.Push(Register.HP);

            // Copiar la primera cadena al heap
            generator.Comment("Copying the first string to heap");
            string end1Label = generator.GetLabel();
            string loop1Label = generator.GetLabel();
            
            generator.SetLabel(loop1Label);
            // Cargar un byte de la primera cadena
            generator.instructions.Add($"LDRB W2, [{leftStringReg}]");
            // Si es null (0), terminar el primer loop
            generator.instructions.Add($"CBZ W2, {end1Label}");
            // Almacenar el byte en el heap
            generator.instructions.Add($"STRB W2, [{Register.HP}]");
            // Incrementar puntero del heap
            generator.Mov(Register.X3, 1);
            generator.Add(Register.HP, Register.HP, Register.X3);
            // Incrementar puntero de la cadena
            generator.Add(leftStringReg, leftStringReg, Register.X3);
            // Volver al inicio del loop
            generator.B(loop1Label);
            generator.SetLabel(end1Label);

            // Copiar la segunda cadena al heap
            generator.Comment("Copying the second string to heap");
            string end2Label = generator.GetLabel();
            string loop2Label = generator.GetLabel();
            
            generator.SetLabel(loop2Label);
            // Cargar un byte de la segunda cadena
            generator.instructions.Add($"LDRB W2, [{rightStringReg}]");
            // Si es null (0), terminar el segundo loop
            generator.instructions.Add($"CBZ W2, {end2Label}");
            // Almacenar el byte en el heap
            generator.instructions.Add($"STRB W2, [{Register.HP}]");
            // Incrementar puntero del heap
            generator.Mov(Register.X3, 1);
            generator.Add(Register.HP, Register.HP, Register.X3);
            // Incrementar puntero de la cadena
            generator.Add(rightStringReg, rightStringReg, Register.X3);
            // Volver al inicio del loop
            generator.B(loop2Label);
            generator.SetLabel(end2Label);

            // Agregar el carácter nulo al final
            generator.Comment("Adding null character at the end");
            generator.Mov("w2", 0);
            generator.instructions.Add($"STRB W2, [{Register.HP}]");
            generator.Mov(Register.X3, 1);
            generator.Add(Register.HP, Register.HP, Register.X3);
        }
    }
}