.data
heap: .space 4096
.text
.global _start
_start:
    adr x10, heap
// Variable declaration: puntos
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Print statement
// String constant: === Archivo de prueba básico ===
STR x10, [SP, #-8]!
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 104 to heap - h
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 98 to heap - b
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 98 to heap - b
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 225 to heap - á
MOV w0, #225
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: Validaciones manuales esperadas: 4
STR x10, [SP, #-8]!
// Pushing char 86 to heap - V
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 52 to heap - 4
MOV w0, #52
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: ==== Declaración de variables ====
STR x10, [SP, #-8]!
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 98 to heap - b
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: puntosDeclaracion
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Print statement
// String constant: Declaración explícita con tipo y valor
STR x10, [SP, #-8]!
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 237 to heap - í
MOV w0, #237
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 121 to heap - y
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: entero of type int
// Constant: 42
MOV x0, #42
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Variable declaration: decimal of type float64
// Decimal constant: 3.14
MOVZ X0, #34079, LSL #0
MOVK X0, #20971, LSL #16
MOVK X0, #7864, LSL #32
MOVK X0, #16393, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Variable declaration: texto of type string
// String constant: Hola!
STR x10, [SP, #-8]!
// Pushing char 72 to heap - H
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 33 to heap - !
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
// Variable declaration: booleano of type bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Variable declaration: caracter of type rune
// Rune constant: 'A'
MOV x0, #65
STR x0, [SP, #-8]!
// Pushing object  of type Rune
// Print statement
// String constant: \n\n###Validacion Manual
STR x10, [SP, #-8]!
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 35 to heap - #
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 35 to heap - #
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 35 to heap - #
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 86 to heap - V
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: entero:
STR x10, [SP, #-8]!
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: decimal:
STR x10, [SP, #-8]!
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: texto:
STR x10, [SP, #-8]!
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: booleano:
STR x10, [SP, #-8]!
// Pushing char 98 to heap - b
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: caracter:
STR x10, [SP, #-8]!
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_rune
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 
STR x10, [SP, #-8]!
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// If statement
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Relational operation
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 42
MOV x0, #42
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L8
MOV x0, #0
STR x0, [SP, #-8]!
B L9
L8:
MOV x0, #1
STR x0, [SP, #-8]!
L9:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L6 si exp(0) es falso 
BEQ L6
// Relational operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 3.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16392, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BGT L10
MOV x0, #0
STR x0, [SP, #-8]!
B L11
L10:
MOV x0, #1
STR x0, [SP, #-8]!
L11:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L6
MOV x0, #1
B L7
// Saltar a etiquetra L6 si exp(0) es falso
L6:
MOV x0, #0
// Saltar a etiqueta L7 
L7:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L4 si exp(0) es falso 
BEQ L4
// Relational operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type String
// String constant: Hola!
STR x10, [SP, #-8]!
// Pushing char 72 to heap - H
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 33 to heap - !
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
// String comparison
BL compare_strings
CBZ x0, L12
MOV x0, #0
STR x0, [SP, #-8]!
B L13
L12:
MOV x0, #1
STR x0, [SP, #-8]!
L13:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L4
MOV x0, #1
B L5
// Saltar a etiquetra L4 si exp(0) es falso
L4:
MOV x0, #0
// Saltar a etiqueta L5 
L5:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L2 si exp(0) es falso 
BEQ L2
// Relational operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L14
MOV x0, #0
STR x0, [SP, #-8]!
B L15
L14:
MOV x0, #1
STR x0, [SP, #-8]!
L15:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L2
MOV x0, #1
B L3
// Saltar a etiquetra L2 si exp(0) es falso
L2:
MOV x0, #0
// Saltar a etiqueta L3 
L3:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L0 si exp(0) es falso 
BEQ L0
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Rune
// Rune constant: 'A'
MOV x0, #65
STR x0, [SP, #-8]!
// Pushing object  of type Rune
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L16
MOV x0, #0
STR x0, [SP, #-8]!
B L17
L16:
MOV x0, #1
STR x0, [SP, #-8]!
L17:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L0
MOV x0, #1
B L1
// Saltar a etiquetra L0 si exp(0) es falso
L0:
MOV x0, #0
// Saltar a etiqueta L1 
L1:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
// If-else statement
CBZ x0, L18
// Block statement
// Expression statement
// Assignment to variable: puntosDeclaracion
// Add/Sub operation
// Visiting left operand
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #40
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosDeclaracion of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Declaración explícita: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 237 to heap - í
MOV w0, #237
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
B L19
L18:
// Block statement
// Print statement
// String constant: X Declaración explícita: incorrecto
STR x10, [SP, #-8]!
// Pushing char 88 to heap - X
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 237 to heap - í
MOV w0, #237
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
L19:
// Print statement
// String constant: Declaración sin valor
STR x10, [SP, #-8]!
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: enteroSinValor of type int
// Default value
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Variable declaration: decimalSinValor of type float64
// Default value
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #0, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Variable declaration: textoSinValor of type string
// Default value
STR x10, [SP, #-8]!
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
// Variable declaration: booleanoSinValor of type bool
// Default value
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Print statement
// String constant: enteroSinValor:
STR x10, [SP, #-8]!
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 83 to heap - S
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 86 to heap - V
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: decimalSinValor:
STR x10, [SP, #-8]!
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 83 to heap - S
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 86 to heap - V
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: textoSinValor:
STR x10, [SP, #-8]!
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 83 to heap - S
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 86 to heap - V
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: booleanoSinValor:
STR x10, [SP, #-8]!
// Pushing char 98 to heap - b
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 83 to heap - S
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 86 to heap - V
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// If statement
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Relational operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L26
MOV x0, #0
STR x0, [SP, #-8]!
B L27
L26:
MOV x0, #1
STR x0, [SP, #-8]!
L27:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L24 si exp(0) es falso 
BEQ L24
// Relational operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 0.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #0, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BEQ L28
MOV x0, #0
STR x0, [SP, #-8]!
B L29
L28:
MOV x0, #1
STR x0, [SP, #-8]!
L29:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L24
MOV x0, #1
B L25
// Saltar a etiquetra L24 si exp(0) es falso
L24:
MOV x0, #0
// Saltar a etiqueta L25 
L25:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L22 si exp(0) es falso 
BEQ L22
// Relational operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type String
// String constant: 
STR x10, [SP, #-8]!
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
// String comparison
BL compare_strings
CBZ x0, L30
MOV x0, #0
STR x0, [SP, #-8]!
B L31
L30:
MOV x0, #1
STR x0, [SP, #-8]!
L31:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L22
MOV x0, #1
B L23
// Saltar a etiquetra L22 si exp(0) es falso
L22:
MOV x0, #0
// Saltar a etiqueta L23 
L23:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L20 si exp(0) es falso 
BEQ L20
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L32
MOV x0, #0
STR x0, [SP, #-8]!
B L33
L32:
MOV x0, #1
STR x0, [SP, #-8]!
L33:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L20
MOV x0, #1
B L21
// Saltar a etiquetra L20 si exp(0) es falso
L20:
MOV x0, #0
// Saltar a etiqueta L21 
L21:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
// If-else statement
CBZ x0, L34
// Block statement
// Expression statement
// Assignment to variable: puntosDeclaracion
// Add/Sub operation
// Visiting left operand
MOV x0, #72
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #72
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosDeclaracion of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Declaración sin valor: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
B L35
L34:
// Block statement
// Print statement
// String constant: X Declaración sin valor: incorrecto
STR x10, [SP, #-8]!
// Pushing char 88 to heap - X
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
L35:
// Print statement
// String constant: Declaración con inferencia de tipo
STR x10, [SP, #-8]!
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: enteroInferido
// Constant: 100
MOV x0, #100
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Variable declaration: decimalInferido
// Decimal constant: 2.71
MOVZ X0, #18350, LSL #0
MOVK X0, #31457, LSL #16
MOVK X0, #44564, LSL #32
MOVK X0, #16389, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Variable declaration: textoInferido
// String constant: Adios!
STR x10, [SP, #-8]!
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 33 to heap - !
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
// Variable declaration: booleanoInferido
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Print statement
// String constant: enteroInferido:
STR x10, [SP, #-8]!
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 73 to heap - I
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: decimalInferido:
STR x10, [SP, #-8]!
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 73 to heap - I
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: textoInferido:
STR x10, [SP, #-8]!
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 73 to heap - I
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: booleanoInferido:
STR x10, [SP, #-8]!
// Pushing char 98 to heap - b
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 73 to heap - I
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// If statement
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Relational operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 100
MOV x0, #100
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L42
MOV x0, #0
STR x0, [SP, #-8]!
B L43
L42:
MOV x0, #1
STR x0, [SP, #-8]!
L43:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L40 si exp(0) es falso 
BEQ L40
// Relational operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 2.7
MOVZ X0, #39322, LSL #0
MOVK X0, #39321, LSL #16
MOVK X0, #39321, LSL #32
MOVK X0, #16389, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BGT L44
MOV x0, #0
STR x0, [SP, #-8]!
B L45
L44:
MOV x0, #1
STR x0, [SP, #-8]!
L45:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L40
MOV x0, #1
B L41
// Saltar a etiquetra L40 si exp(0) es falso
L40:
MOV x0, #0
// Saltar a etiqueta L41 
L41:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L38 si exp(0) es falso 
BEQ L38
// Relational operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type String
// String constant: Adios!
STR x10, [SP, #-8]!
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 33 to heap - !
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
// String comparison
BL compare_strings
CBZ x0, L46
MOV x0, #0
STR x0, [SP, #-8]!
B L47
L46:
MOV x0, #1
STR x0, [SP, #-8]!
L47:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L38
MOV x0, #1
B L39
// Saltar a etiquetra L38 si exp(0) es falso
L38:
MOV x0, #0
// Saltar a etiqueta L39 
L39:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L36 si exp(0) es falso 
BEQ L36
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L48
MOV x0, #0
STR x0, [SP, #-8]!
B L49
L48:
MOV x0, #1
STR x0, [SP, #-8]!
L49:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L36
MOV x0, #1
B L37
// Saltar a etiquetra L36 si exp(0) es falso
L36:
MOV x0, #0
// Saltar a etiqueta L37 
L37:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
// If-else statement
CBZ x0, L50
// Block statement
// Expression statement
// Assignment to variable: puntosDeclaracion
// Add/Sub operation
// Visiting left operand
MOV x0, #104
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #104
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosDeclaracion of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Declaración con inferencia: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
B L51
L50:
// Block statement
// Print statement
// String constant: X Declaración con inferencia: incorrecto
STR x10, [SP, #-8]!
// Pushing char 88 to heap - X
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
L51:
// Print statement
// String constant: \n==== Asignación de variables ====
STR x10, [SP, #-8]!
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 98 to heap - b
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: puntosAsignacion
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Print statement
// String constant: Asignación con tipo correcto
STR x10, [SP, #-8]!
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Expression statement
// Assignment to variable: entero
// Constant: 99
MOV x0, #99
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #104
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object entero of type Int
// Popping value to discard
LDR x0, [SP], #8
// Expression statement
// Assignment to variable: decimal
// Decimal constant: 9.9
MOVZ X0, #52429, LSL #0
MOVK X0, #52428, LSL #16
MOVK X0, #52428, LSL #32
MOVK X0, #16419, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
LDR x0, [SP], #8
MOV x1, #96
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object decimal of type Float
// Popping value to discard
LDR x0, [SP], #8
// Expression statement
// Assignment to variable: texto
// String constant: Nuevo
STR x10, [SP, #-8]!
// Pushing char 78 to heap - N
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV x1, #88
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object texto of type String
// Popping value to discard
LDR x0, [SP], #8
// Expression statement
// Assignment to variable: booleano
// Logical NOT operation
MOV x0, #80
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
EOR x0, x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
MOV x1, #80
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object booleano of type Bool
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: \n\n###Validacion Manual
STR x10, [SP, #-8]!
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 35 to heap - #
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 35 to heap - #
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 35 to heap - #
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 86 to heap - V
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: entero:
STR x10, [SP, #-8]!
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #104
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: decimal:
STR x10, [SP, #-8]!
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: texto:
STR x10, [SP, #-8]!
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #88
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: booleano:
STR x10, [SP, #-8]!
// Pushing char 98 to heap - b
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #80
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 
STR x10, [SP, #-8]!
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// If statement
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Relational operation
MOV x0, #104
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 99
MOV x0, #99
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L58
MOV x0, #0
STR x0, [SP, #-8]!
B L59
L58:
MOV x0, #1
STR x0, [SP, #-8]!
L59:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L56 si exp(0) es falso 
BEQ L56
// Relational operation
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 9.9
MOVZ X0, #52429, LSL #0
MOVK X0, #52428, LSL #16
MOVK X0, #52428, LSL #32
MOVK X0, #16419, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BEQ L60
MOV x0, #0
STR x0, [SP, #-8]!
B L61
L60:
MOV x0, #1
STR x0, [SP, #-8]!
L61:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L56
MOV x0, #1
B L57
// Saltar a etiquetra L56 si exp(0) es falso
L56:
MOV x0, #0
// Saltar a etiqueta L57 
L57:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L54 si exp(0) es falso 
BEQ L54
// Relational operation
MOV x0, #88
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type String
// String constant: Nuevo
STR x10, [SP, #-8]!
// Pushing char 78 to heap - N
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
// String comparison
BL compare_strings
CBZ x0, L62
MOV x0, #0
STR x0, [SP, #-8]!
B L63
L62:
MOV x0, #1
STR x0, [SP, #-8]!
L63:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L54
MOV x0, #1
B L55
// Saltar a etiquetra L54 si exp(0) es falso
L54:
MOV x0, #0
// Saltar a etiqueta L55 
L55:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L52 si exp(0) es falso 
BEQ L52
// Relational operation
MOV x0, #80
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L64
MOV x0, #0
STR x0, [SP, #-8]!
B L65
L64:
MOV x0, #1
STR x0, [SP, #-8]!
L65:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L52
MOV x0, #1
B L53
// Saltar a etiquetra L52 si exp(0) es falso
L52:
MOV x0, #0
// Saltar a etiqueta L53 
L53:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
// If-else statement
CBZ x0, L66
// Block statement
// Expression statement
// Assignment to variable: puntosAsignacion
// Add/Sub operation
// Visiting left operand
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosAsignacion of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Asignación simple: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
B L67
L66:
// Block statement
// Print statement
// String constant: X Asignación simple: incorrecto
STR x10, [SP, #-8]!
// Pushing char 88 to heap - X
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
L67:
// Print statement
// String constant: Asignación con expresiones
STR x10, [SP, #-8]!
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Expression statement
// Assignment to variable: entero
// Add/Sub operation
// Visiting left operand
MOV x0, #104
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #104
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object entero of type Int
// Popping value to discard
LDR x0, [SP], #8
// Expression statement
// Assignment to variable: decimal
// Mul/Div operation
// Visiting left operand
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Visiting right operand
// Constant: 2
MOV x0, #2
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR d1, [SP], #8
SCVTF d0, x0
FMUL d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Pushing object  of type Float
LDR x0, [SP], #8
MOV x1, #96
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object decimal of type Float
// Popping value to discard
LDR x0, [SP], #8
// Expression statement
// Assignment to variable: texto
// Add/Sub operation
// Visiting left operand
MOV x0, #88
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type String
// Visiting right operand
// String constant: !
STR x10, [SP, #-8]!
// Pushing char 33 to heap - !
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
// String concatenation
// String concatenation
// Saving the heap address of the concatenated string on stack
STR x10, [SP, #-8]!
// Copying the first string to heap
L69:
LDRB W2, [x1]
CBZ W2, L68
STRB W2, [x10]
MOV x3, #1
ADD x10, x10, x3
ADD x1, x1, x3
B L69
L68:
// Copying the second string to heap
L71:
LDRB W2, [x0]
CBZ W2, L70
STRB W2, [x10]
MOV x3, #1
ADD x10, x10, x3
ADD x0, x0, x3
B L71
L70:
// Adding null character at the end
MOV w2, #0
STRB W2, [x10]
MOV x3, #1
ADD x10, x10, x3
// Pushing object  of type String
LDR x0, [SP], #8
MOV x1, #88
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object texto of type String
// Popping value to discard
LDR x0, [SP], #8
// Expression statement
// Assignment to variable: booleano
// Logical NOT operation
MOV x0, #80
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
EOR x0, x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
MOV x1, #80
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object booleano of type Bool
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: entero:
STR x10, [SP, #-8]!
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #104
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: decimal:
STR x10, [SP, #-8]!
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: texto:
STR x10, [SP, #-8]!
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #88
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: booleano:
STR x10, [SP, #-8]!
// Pushing char 98 to heap - b
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #80
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// If statement
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Relational operation
MOV x0, #104
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 100
MOV x0, #100
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L78
MOV x0, #0
STR x0, [SP, #-8]!
B L79
L78:
MOV x0, #1
STR x0, [SP, #-8]!
L79:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L76 si exp(0) es falso 
BEQ L76
// Relational operation
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 19.8
MOVZ X0, #52429, LSL #0
MOVK X0, #52428, LSL #16
MOVK X0, #52428, LSL #32
MOVK X0, #16435, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BEQ L80
MOV x0, #0
STR x0, [SP, #-8]!
B L81
L80:
MOV x0, #1
STR x0, [SP, #-8]!
L81:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L76
MOV x0, #1
B L77
// Saltar a etiquetra L76 si exp(0) es falso
L76:
MOV x0, #0
// Saltar a etiqueta L77 
L77:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L74 si exp(0) es falso 
BEQ L74
// Relational operation
MOV x0, #88
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type String
// String constant: Nuevo!
STR x10, [SP, #-8]!
// Pushing char 78 to heap - N
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 33 to heap - !
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
// String comparison
BL compare_strings
CBZ x0, L82
MOV x0, #0
STR x0, [SP, #-8]!
B L83
L82:
MOV x0, #1
STR x0, [SP, #-8]!
L83:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L74
MOV x0, #1
B L75
// Saltar a etiquetra L74 si exp(0) es falso
L74:
MOV x0, #0
// Saltar a etiqueta L75 
L75:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L72 si exp(0) es falso 
BEQ L72
// Relational operation
MOV x0, #80
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L84
MOV x0, #0
STR x0, [SP, #-8]!
B L85
L84:
MOV x0, #1
STR x0, [SP, #-8]!
L85:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L72
MOV x0, #1
B L73
// Saltar a etiquetra L72 si exp(0) es falso
L72:
MOV x0, #0
// Saltar a etiqueta L73 
L73:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
// If-else statement
CBZ x0, L86
// Block statement
// Expression statement
// Assignment to variable: puntosAsignacion
// Add/Sub operation
// Visiting left operand
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosAsignacion of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Asignación con expresiones: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
B L87
L86:
// Block statement
// Print statement
// String constant: X Asignación con expresiones: incorrecto
STR x10, [SP, #-8]!
// Pushing char 88 to heap - X
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
L87:
// Print statement
// String constant: Asignación con tipo incorrecto
STR x10, [SP, #-8]!
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Expression statement
// Assignment to variable: puntosAsignacion
// Add/Sub operation
// Visiting left operand
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosAsignacion of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Asignación con tipo incorrecto: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: \n==== Operaciones Aritméticas ====
STR x10, [SP, #-8]!
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 233 to heap - é
MOV w0, #233
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: puntosOperacionesAritmeticas
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Print statement
// String constant: Suma
STR x10, [SP, #-8]!
// Pushing char 83 to heap - S
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: resultadoSuma1
// Add/Sub operation
// Visiting left operand
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Variable declaration: resultadoSuma2
// Add/Sub operation
// Visiting left operand
// Decimal constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Visiting right operand
// Decimal constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
FADD d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Pushing object  of type Float
// Variable declaration: resultadoSuma3
// Add/Sub operation
// Visiting left operand
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Decimal constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR x1, [SP], #8
SCVTF d1, x1
FADD d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Pushing object  of type Float
// Variable declaration: resultadoSuma4
// Add/Sub operation
// Visiting left operand
// Decimal constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Visiting right operand
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR d1, [SP], #8
SCVTF d0, x0
FADD d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Pushing object  of type Float
// Print statement
// String constant: 10 + 5 =
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 10.5 + 5.5 =
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 10 + 5.5 =
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 10.5 + 5 =
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// If statement
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Relational operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 15
MOV x0, #15
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L94
MOV x0, #0
STR x0, [SP, #-8]!
B L95
L94:
MOV x0, #1
STR x0, [SP, #-8]!
L95:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L92 si exp(0) es falso 
BEQ L92
// Relational operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 16.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16432, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BEQ L96
MOV x0, #0
STR x0, [SP, #-8]!
B L97
L96:
MOV x0, #1
STR x0, [SP, #-8]!
L97:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L92
MOV x0, #1
B L93
// Saltar a etiquetra L92 si exp(0) es falso
L92:
MOV x0, #0
// Saltar a etiqueta L93 
L93:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L90 si exp(0) es falso 
BEQ L90
// Relational operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 15.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16431, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BEQ L98
MOV x0, #0
STR x0, [SP, #-8]!
B L99
L98:
MOV x0, #1
STR x0, [SP, #-8]!
L99:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L90
MOV x0, #1
B L91
// Saltar a etiquetra L90 si exp(0) es falso
L90:
MOV x0, #0
// Saltar a etiqueta L91 
L91:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L88 si exp(0) es falso 
BEQ L88
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 15.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16431, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BEQ L100
MOV x0, #0
STR x0, [SP, #-8]!
B L101
L100:
MOV x0, #1
STR x0, [SP, #-8]!
L101:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L88
MOV x0, #1
B L89
// Saltar a etiquetra L88 si exp(0) es falso
L88:
MOV x0, #0
// Saltar a etiqueta L89 
L89:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
// If-else statement
CBZ x0, L102
// Block statement
// Expression statement
// Assignment to variable: puntosOperacionesAritmeticas
// Add/Sub operation
// Visiting left operand
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #32
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosOperacionesAritmeticas of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Suma: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 83 to heap - S
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
B L103
L102:
// Block statement
// Print statement
// String constant: X Suma: incorrecto
STR x10, [SP, #-8]!
// Pushing char 88 to heap - X
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 83 to heap - S
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
L103:
// Print statement
// String constant: Multiplicación
STR x10, [SP, #-8]!
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: resultadoMult1
// Mul/Div operation
// Visiting left operand
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 3
MOV x0, #3
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
MUL x0, x1, x0
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Variable declaration: resultadoMult2
// Mul/Div operation
// Visiting left operand
// Decimal constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Visiting right operand
// Decimal constant: 2.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16384, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
FMUL d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Pushing object  of type Float
// Variable declaration: resultadoMult3
// Mul/Div operation
// Visiting left operand
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Decimal constant: 2.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16388, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR x1, [SP], #8
SCVTF d1, x1
FMUL d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Pushing object  of type Float
// Variable declaration: resultadoMult4
// Mul/Div operation
// Visiting left operand
// Decimal constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Visiting right operand
// Constant: 2
MOV x0, #2
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR d1, [SP], #8
SCVTF d0, x0
FMUL d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Pushing object  of type Float
// Print statement
// String constant: 5 * 3 =
STR x10, [SP, #-8]!
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 51 to heap - 3
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 5.5 * 2.0 =
STR x10, [SP, #-8]!
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 50 to heap - 2
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 5 * 2.5 =
STR x10, [SP, #-8]!
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 50 to heap - 2
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 5.5 * 2 =
STR x10, [SP, #-8]!
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 50 to heap - 2
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// If statement
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Relational operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 15
MOV x0, #15
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L110
MOV x0, #0
STR x0, [SP, #-8]!
B L111
L110:
MOV x0, #1
STR x0, [SP, #-8]!
L111:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L108 si exp(0) es falso 
BEQ L108
// Relational operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 11.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16422, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BEQ L112
MOV x0, #0
STR x0, [SP, #-8]!
B L113
L112:
MOV x0, #1
STR x0, [SP, #-8]!
L113:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L108
MOV x0, #1
B L109
// Saltar a etiquetra L108 si exp(0) es falso
L108:
MOV x0, #0
// Saltar a etiqueta L109 
L109:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L106 si exp(0) es falso 
BEQ L106
// Relational operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 12.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16425, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BEQ L114
MOV x0, #0
STR x0, [SP, #-8]!
B L115
L114:
MOV x0, #1
STR x0, [SP, #-8]!
L115:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L106
MOV x0, #1
B L107
// Saltar a etiquetra L106 si exp(0) es falso
L106:
MOV x0, #0
// Saltar a etiqueta L107 
L107:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L104 si exp(0) es falso 
BEQ L104
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 11.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16422, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BEQ L116
MOV x0, #0
STR x0, [SP, #-8]!
B L117
L116:
MOV x0, #1
STR x0, [SP, #-8]!
L117:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L104
MOV x0, #1
B L105
// Saltar a etiquetra L104 si exp(0) es falso
L104:
MOV x0, #0
// Saltar a etiqueta L105 
L105:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
// If-else statement
CBZ x0, L118
// Block statement
// Expression statement
// Assignment to variable: puntosOperacionesAritmeticas
// Add/Sub operation
// Visiting left operand
MOV x0, #64
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #64
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosOperacionesAritmeticas of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Multiplicación: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
B L119
L118:
// Block statement
// Print statement
// String constant: X Multiplicación: incorrecto
STR x10, [SP, #-8]!
// Pushing char 88 to heap - X
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
L119:
// Print statement
// String constant: División
STR x10, [SP, #-8]!
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: resultadoDiv1
// Mul/Div operation
// Visiting left operand
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 2
MOV x0, #2
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
SDIV x0, x1, x0
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Variable declaration: resultadoDiv2
// Mul/Div operation
// Visiting left operand
// Decimal constant: 10.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16420, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Visiting right operand
// Decimal constant: 4.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16400, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
FDIV d0, d1, d0
// Pushing result
STR d0, [SP, #-8]!
// Pushing object  of type Float
// Variable declaration: resultadoDiv3
// Mul/Div operation
// Visiting left operand
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Decimal constant: 4.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16400, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR x1, [SP], #8
SCVTF d1, x1
FDIV d0, d1, d0
// Pushing result
STR d0, [SP, #-8]!
// Pushing object  of type Float
// Variable declaration: resultadoDiv4
// Mul/Div operation
// Visiting left operand
// Decimal constant: 10.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16420, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Visiting right operand
// Constant: 4
MOV x0, #4
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR d1, [SP], #8
SCVTF d0, x0
FDIV d0, d1, d0
// Pushing result
STR d0, [SP, #-8]!
// Pushing object  of type Float
// Print statement
// String constant: 10 / 2 =
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 47 to heap - /
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 50 to heap - 2
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 10.0 / 4.0 =
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 47 to heap - /
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 52 to heap - 4
MOV w0, #52
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 10 / 4.0 =
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 47 to heap - /
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 52 to heap - 4
MOV w0, #52
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 10.0 / 4 =
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 47 to heap - /
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 52 to heap - 4
MOV w0, #52
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// If statement
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Relational operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L126
MOV x0, #0
STR x0, [SP, #-8]!
B L127
L126:
MOV x0, #1
STR x0, [SP, #-8]!
L127:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L124 si exp(0) es falso 
BEQ L124
// Relational operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 2.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16388, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BEQ L128
MOV x0, #0
STR x0, [SP, #-8]!
B L129
L128:
MOV x0, #1
STR x0, [SP, #-8]!
L129:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L124
MOV x0, #1
B L125
// Saltar a etiquetra L124 si exp(0) es falso
L124:
MOV x0, #0
// Saltar a etiqueta L125 
L125:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L122 si exp(0) es falso 
BEQ L122
// Relational operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 2.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16388, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BEQ L130
MOV x0, #0
STR x0, [SP, #-8]!
B L131
L130:
MOV x0, #1
STR x0, [SP, #-8]!
L131:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L122
MOV x0, #1
B L123
// Saltar a etiquetra L122 si exp(0) es falso
L122:
MOV x0, #0
// Saltar a etiqueta L123 
L123:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L120 si exp(0) es falso 
BEQ L120
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 2.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16388, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BEQ L132
MOV x0, #0
STR x0, [SP, #-8]!
B L133
L132:
MOV x0, #1
STR x0, [SP, #-8]!
L133:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L120
MOV x0, #1
B L121
// Saltar a etiquetra L120 si exp(0) es falso
L120:
MOV x0, #0
// Saltar a etiqueta L121 
L121:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
// If-else statement
CBZ x0, L134
// Block statement
// Expression statement
// Assignment to variable: puntosOperacionesAritmeticas
// Add/Sub operation
// Visiting left operand
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #96
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosOperacionesAritmeticas of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK División: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
B L135
L134:
// Block statement
// Print statement
// String constant: X División: incorrecto
STR x10, [SP, #-8]!
// Pushing char 88 to heap - X
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
L135:
// Print statement
// String constant: \n==== Operaciones Relacionales ====
STR x10, [SP, #-8]!
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 82 to heap - R
MOV w0, #82
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: puntosOperacionesRelacionales
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Print statement
// String constant: Igualdad
STR x10, [SP, #-8]!
// Pushing char 73 to heap - I
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: resultadoIgualdad1
// Relational operation
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L136
MOV x0, #0
STR x0, [SP, #-8]!
B L137
L136:
MOV x0, #1
STR x0, [SP, #-8]!
L137:
// Pushing object  of type Bool
// Variable declaration: resultadoIgualdad2
// Relational operation
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L138
MOV x0, #0
STR x0, [SP, #-8]!
B L139
L138:
MOV x0, #1
STR x0, [SP, #-8]!
L139:
// Pushing object  of type Bool
// Variable declaration: resultadoIgualdad3
// Relational operation
// Decimal constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BEQ L140
MOV x0, #0
STR x0, [SP, #-8]!
B L141
L140:
MOV x0, #1
STR x0, [SP, #-8]!
L141:
// Pushing object  of type Bool
// Variable declaration: resultadoIgualdad4
// Relational operation
// Decimal constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BEQ L142
MOV x0, #0
STR x0, [SP, #-8]!
B L143
L142:
MOV x0, #1
STR x0, [SP, #-8]!
L143:
// Pushing object  of type Bool
// Variable declaration: resultadoIgualdad5
// Relational operation
// String constant: Hola
STR x10, [SP, #-8]!
// Pushing char 72 to heap - H
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
// String constant: Hola
STR x10, [SP, #-8]!
// Pushing char 72 to heap - H
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
// String comparison
BL compare_strings
CBZ x0, L144
MOV x0, #0
STR x0, [SP, #-8]!
B L145
L144:
MOV x0, #1
STR x0, [SP, #-8]!
L145:
// Pushing object  of type Bool
// Variable declaration: resultadoIgualdad6
// Relational operation
// String constant: Hola
STR x10, [SP, #-8]!
// Pushing char 72 to heap - H
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
// String constant: Mundo
STR x10, [SP, #-8]!
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
// String comparison
BL compare_strings
CBZ x0, L146
MOV x0, #0
STR x0, [SP, #-8]!
B L147
L146:
MOV x0, #1
STR x0, [SP, #-8]!
L147:
// Pushing object  of type Bool
// Print statement
// String constant: 10 == 10:
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 10 == 5:
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 10.5 == 10.5:
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 10.5 == 5.5:
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: \"Hola\" == \"Hola\":
STR x10, [SP, #-8]!
// Pushing char 34 to heap - "
MOV w0, #34
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 72 to heap - H
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 34 to heap - "
MOV w0, #34
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 34 to heap - "
MOV w0, #34
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 72 to heap - H
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 34 to heap - "
MOV w0, #34
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: \"Hola\" == \"Mundo\":
STR x10, [SP, #-8]!
// Pushing char 34 to heap - "
MOV w0, #34
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 72 to heap - H
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 34 to heap - "
MOV w0, #34
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 34 to heap - "
MOV w0, #34
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 34 to heap - "
MOV w0, #34
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// If statement
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Relational operation
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L158
MOV x0, #0
STR x0, [SP, #-8]!
B L159
L158:
MOV x0, #1
STR x0, [SP, #-8]!
L159:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L156 si exp(0) es falso 
BEQ L156
// Relational operation
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L160
MOV x0, #0
STR x0, [SP, #-8]!
B L161
L160:
MOV x0, #1
STR x0, [SP, #-8]!
L161:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L156
MOV x0, #1
B L157
// Saltar a etiquetra L156 si exp(0) es falso
L156:
MOV x0, #0
// Saltar a etiqueta L157 
L157:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L154 si exp(0) es falso 
BEQ L154
// Relational operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L162
MOV x0, #0
STR x0, [SP, #-8]!
B L163
L162:
MOV x0, #1
STR x0, [SP, #-8]!
L163:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L154
MOV x0, #1
B L155
// Saltar a etiquetra L154 si exp(0) es falso
L154:
MOV x0, #0
// Saltar a etiqueta L155 
L155:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L152 si exp(0) es falso 
BEQ L152
// Relational operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L164
MOV x0, #0
STR x0, [SP, #-8]!
B L165
L164:
MOV x0, #1
STR x0, [SP, #-8]!
L165:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L152
MOV x0, #1
B L153
// Saltar a etiquetra L152 si exp(0) es falso
L152:
MOV x0, #0
// Saltar a etiqueta L153 
L153:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L150 si exp(0) es falso 
BEQ L150
// Relational operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L166
MOV x0, #0
STR x0, [SP, #-8]!
B L167
L166:
MOV x0, #1
STR x0, [SP, #-8]!
L167:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L150
MOV x0, #1
B L151
// Saltar a etiquetra L150 si exp(0) es falso
L150:
MOV x0, #0
// Saltar a etiqueta L151 
L151:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L148 si exp(0) es falso 
BEQ L148
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L168
MOV x0, #0
STR x0, [SP, #-8]!
B L169
L168:
MOV x0, #1
STR x0, [SP, #-8]!
L169:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L148
MOV x0, #1
B L149
// Saltar a etiquetra L148 si exp(0) es falso
L148:
MOV x0, #0
// Saltar a etiqueta L149 
L149:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
// If-else statement
CBZ x0, L170
// Block statement
// Expression statement
// Assignment to variable: puntosOperacionesRelacionales
// Add/Sub operation
// Visiting left operand
MOV x0, #48
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #48
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosOperacionesRelacionales of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Igualdad: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 73 to heap - I
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
B L171
L170:
// Block statement
// Print statement
// String constant: X Igualdad: incorrecto
STR x10, [SP, #-8]!
// Pushing char 88 to heap - X
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 73 to heap - I
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
L171:
// Print statement
// String constant: Mayor/Menor
STR x10, [SP, #-8]!
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 121 to heap - y
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 47 to heap - /
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: resultadoComp1
// Relational operation
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BGT L172
MOV x0, #0
STR x0, [SP, #-8]!
B L173
L172:
MOV x0, #1
STR x0, [SP, #-8]!
L173:
// Pushing object  of type Bool
// Variable declaration: resultadoComp2
// Relational operation
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BLT L174
MOV x0, #0
STR x0, [SP, #-8]!
B L175
L174:
MOV x0, #1
STR x0, [SP, #-8]!
L175:
// Pushing object  of type Bool
// Variable declaration: resultadoComp3
// Relational operation
// Decimal constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BGT L176
MOV x0, #0
STR x0, [SP, #-8]!
B L177
L176:
MOV x0, #1
STR x0, [SP, #-8]!
L177:
// Pushing object  of type Bool
// Variable declaration: resultadoComp4
// Relational operation
// Decimal constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BLT L178
MOV x0, #0
STR x0, [SP, #-8]!
B L179
L178:
MOV x0, #1
STR x0, [SP, #-8]!
L179:
// Pushing object  of type Bool
// Print statement
// String constant: 10 > 5:
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 62 to heap - >
MOV w0, #62
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 10 < 5:
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 60 to heap - <
MOV w0, #60
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 10.5 > 5.5:
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 62 to heap - >
MOV w0, #62
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 10.5 < 5.5:
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 60 to heap - <
MOV w0, #60
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// If statement
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Relational operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L186
MOV x0, #0
STR x0, [SP, #-8]!
B L187
L186:
MOV x0, #1
STR x0, [SP, #-8]!
L187:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L184 si exp(0) es falso 
BEQ L184
// Relational operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L188
MOV x0, #0
STR x0, [SP, #-8]!
B L189
L188:
MOV x0, #1
STR x0, [SP, #-8]!
L189:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L184
MOV x0, #1
B L185
// Saltar a etiquetra L184 si exp(0) es falso
L184:
MOV x0, #0
// Saltar a etiqueta L185 
L185:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L182 si exp(0) es falso 
BEQ L182
// Relational operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L190
MOV x0, #0
STR x0, [SP, #-8]!
B L191
L190:
MOV x0, #1
STR x0, [SP, #-8]!
L191:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L182
MOV x0, #1
B L183
// Saltar a etiquetra L182 si exp(0) es falso
L182:
MOV x0, #0
// Saltar a etiqueta L183 
L183:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L180 si exp(0) es falso 
BEQ L180
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L192
MOV x0, #0
STR x0, [SP, #-8]!
B L193
L192:
MOV x0, #1
STR x0, [SP, #-8]!
L193:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L180
MOV x0, #1
B L181
// Saltar a etiquetra L180 si exp(0) es falso
L180:
MOV x0, #0
// Saltar a etiqueta L181 
L181:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
// If-else statement
CBZ x0, L194
// Block statement
// Expression statement
// Assignment to variable: puntosOperacionesRelacionales
// Add/Sub operation
// Visiting left operand
MOV x0, #80
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #80
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosOperacionesRelacionales of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Mayor/Menor: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 121 to heap - y
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 47 to heap - /
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
B L195
L194:
// Block statement
// Print statement
// String constant: X Mayor/Menor: incorrecto
STR x10, [SP, #-8]!
// Pushing char 88 to heap - X
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 121 to heap - y
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 47 to heap - /
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
L195:
// Print statement
// String constant: Mayor o igual/Menor o igual
STR x10, [SP, #-8]!
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 121 to heap - y
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 47 to heap - /
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: resultadoComp5
// Relational operation
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BGE L196
MOV x0, #0
STR x0, [SP, #-8]!
B L197
L196:
MOV x0, #1
STR x0, [SP, #-8]!
L197:
// Pushing object  of type Bool
// Variable declaration: resultadoComp6
// Relational operation
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BLE L198
MOV x0, #0
STR x0, [SP, #-8]!
B L199
L198:
MOV x0, #1
STR x0, [SP, #-8]!
L199:
// Pushing object  of type Bool
// Variable declaration: resultadoComp7
// Relational operation
// Decimal constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 5.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16406, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BGE L200
MOV x0, #0
STR x0, [SP, #-8]!
B L201
L200:
MOV x0, #1
STR x0, [SP, #-8]!
L201:
// Pushing object  of type Bool
// Variable declaration: resultadoComp8
// Relational operation
// Decimal constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BLE L202
MOV x0, #0
STR x0, [SP, #-8]!
B L203
L202:
MOV x0, #1
STR x0, [SP, #-8]!
L203:
// Pushing object  of type Bool
// Print statement
// String constant: 10 >= 10:
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 62 to heap - >
MOV w0, #62
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 10 <= 5:
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 60 to heap - <
MOV w0, #60
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 10.5 >= 5.5:
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 62 to heap - >
MOV w0, #62
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 10.5 <= 10.5:
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 60 to heap - <
MOV w0, #60
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// If statement
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Relational operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L210
MOV x0, #0
STR x0, [SP, #-8]!
B L211
L210:
MOV x0, #1
STR x0, [SP, #-8]!
L211:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L208 si exp(0) es falso 
BEQ L208
// Relational operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L212
MOV x0, #0
STR x0, [SP, #-8]!
B L213
L212:
MOV x0, #1
STR x0, [SP, #-8]!
L213:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L208
MOV x0, #1
B L209
// Saltar a etiquetra L208 si exp(0) es falso
L208:
MOV x0, #0
// Saltar a etiqueta L209 
L209:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L206 si exp(0) es falso 
BEQ L206
// Relational operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L214
MOV x0, #0
STR x0, [SP, #-8]!
B L215
L214:
MOV x0, #1
STR x0, [SP, #-8]!
L215:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L206
MOV x0, #1
B L207
// Saltar a etiquetra L206 si exp(0) es falso
L206:
MOV x0, #0
// Saltar a etiqueta L207 
L207:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L204 si exp(0) es falso 
BEQ L204
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L216
MOV x0, #0
STR x0, [SP, #-8]!
B L217
L216:
MOV x0, #1
STR x0, [SP, #-8]!
L217:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L204
MOV x0, #1
B L205
// Saltar a etiquetra L204 si exp(0) es falso
L204:
MOV x0, #0
// Saltar a etiqueta L205 
L205:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
// If-else statement
CBZ x0, L218
// Block statement
// Expression statement
// Assignment to variable: puntosOperacionesRelacionales
// Add/Sub operation
// Visiting left operand
MOV x0, #112
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #112
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosOperacionesRelacionales of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Mayor o igual/Menor o igual: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 121 to heap - y
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 47 to heap - /
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
B L219
L218:
// Block statement
// Print statement
// String constant: X Mayor o igual/Menor o igual: incorrecto
STR x10, [SP, #-8]!
// Pushing char 88 to heap - X
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 121 to heap - y
MOV w0, #121
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 47 to heap - /
MOV w0, #47
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
L219:
// Print statement
// String constant: \n==== Operaciones Lógicas ====
STR x10, [SP, #-8]!
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 76 to heap - L
MOV w0, #76
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: puntosOperacionesLogicas
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Print statement
// String constant: AND
STR x10, [SP, #-8]!
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 78 to heap - N
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: resultadoAnd1
// Logical operation: &&
// Starting AND operation
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L220 si exp(0) es falso 
BEQ L220
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L220
MOV x0, #1
B L221
// Saltar a etiquetra L220 si exp(0) es falso
L220:
MOV x0, #0
// Saltar a etiqueta L221 
L221:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Variable declaration: resultadoAnd2
// Logical operation: &&
// Starting AND operation
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L222 si exp(0) es falso 
BEQ L222
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L222
MOV x0, #1
B L223
// Saltar a etiquetra L222 si exp(0) es falso
L222:
MOV x0, #0
// Saltar a etiqueta L223 
L223:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Variable declaration: resultadoAnd3
// Logical operation: &&
// Starting AND operation
// Relational operation
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L226
MOV x0, #0
STR x0, [SP, #-8]!
B L227
L226:
MOV x0, #1
STR x0, [SP, #-8]!
L227:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L224 si exp(0) es falso 
BEQ L224
// Relational operation
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L228
MOV x0, #0
STR x0, [SP, #-8]!
B L229
L228:
MOV x0, #1
STR x0, [SP, #-8]!
L229:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L224
MOV x0, #1
B L225
// Saltar a etiquetra L224 si exp(0) es falso
L224:
MOV x0, #0
// Saltar a etiqueta L225 
L225:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Variable declaration: resultadoAnd4
// Logical operation: &&
// Starting AND operation
// Relational operation
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L232
MOV x0, #0
STR x0, [SP, #-8]!
B L233
L232:
MOV x0, #1
STR x0, [SP, #-8]!
L233:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L230 si exp(0) es falso 
BEQ L230
// Relational operation
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 6
MOV x0, #6
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L234
MOV x0, #0
STR x0, [SP, #-8]!
B L235
L234:
MOV x0, #1
STR x0, [SP, #-8]!
L235:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L230
MOV x0, #1
B L231
// Saltar a etiquetra L230 si exp(0) es falso
L230:
MOV x0, #0
// Saltar a etiqueta L231 
L231:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Print statement
// String constant: true && true:
STR x10, [SP, #-8]!
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 38 to heap - &
MOV w0, #38
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 38 to heap - &
MOV w0, #38
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: true && false:
STR x10, [SP, #-8]!
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 38 to heap - &
MOV w0, #38
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 38 to heap - &
MOV w0, #38
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: (10 == 10) && (5 == 5):
STR x10, [SP, #-8]!
// Pushing char 40 to heap - (
MOV w0, #40
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 41 to heap - )
MOV w0, #41
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 38 to heap - &
MOV w0, #38
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 38 to heap - &
MOV w0, #38
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 40 to heap - (
MOV w0, #40
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 41 to heap - )
MOV w0, #41
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: (10 == 10) && (5 == 6):
STR x10, [SP, #-8]!
// Pushing char 40 to heap - (
MOV w0, #40
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 41 to heap - )
MOV w0, #41
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 38 to heap - &
MOV w0, #38
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 38 to heap - &
MOV w0, #38
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 40 to heap - (
MOV w0, #40
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 54 to heap - 6
MOV w0, #54
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 41 to heap - )
MOV w0, #41
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// If statement
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Relational operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L242
MOV x0, #0
STR x0, [SP, #-8]!
B L243
L242:
MOV x0, #1
STR x0, [SP, #-8]!
L243:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L240 si exp(0) es falso 
BEQ L240
// Relational operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L244
MOV x0, #0
STR x0, [SP, #-8]!
B L245
L244:
MOV x0, #1
STR x0, [SP, #-8]!
L245:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L240
MOV x0, #1
B L241
// Saltar a etiquetra L240 si exp(0) es falso
L240:
MOV x0, #0
// Saltar a etiqueta L241 
L241:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L238 si exp(0) es falso 
BEQ L238
// Relational operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L246
MOV x0, #0
STR x0, [SP, #-8]!
B L247
L246:
MOV x0, #1
STR x0, [SP, #-8]!
L247:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L238
MOV x0, #1
B L239
// Saltar a etiquetra L238 si exp(0) es falso
L238:
MOV x0, #0
// Saltar a etiqueta L239 
L239:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L236 si exp(0) es falso 
BEQ L236
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L248
MOV x0, #0
STR x0, [SP, #-8]!
B L249
L248:
MOV x0, #1
STR x0, [SP, #-8]!
L249:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L236
MOV x0, #1
B L237
// Saltar a etiquetra L236 si exp(0) es falso
L236:
MOV x0, #0
// Saltar a etiqueta L237 
L237:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
// If-else statement
CBZ x0, L250
// Block statement
// Expression statement
// Assignment to variable: puntosOperacionesLogicas
// Add/Sub operation
// Visiting left operand
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #32
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosOperacionesLogicas of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK AND: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 78 to heap - N
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
B L251
L250:
// Block statement
// Print statement
// String constant: X AND: incorrecto
STR x10, [SP, #-8]!
// Pushing char 88 to heap - X
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 78 to heap - N
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
L251:
// Print statement
// String constant: OR
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 82 to heap - R
MOV w0, #82
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: resultadoOr1
// Logical operation: ||
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L252 si exp(0) es verdadero
BNE L252
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BNE L252
MOV x0, #0
B L253
L252:
MOV x0, #1
L253:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Variable declaration: resultadoOr2
// Logical operation: ||
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L254 si exp(0) es verdadero
BNE L254
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BNE L254
MOV x0, #0
B L255
L254:
MOV x0, #1
L255:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Variable declaration: resultadoOr3
// Logical operation: ||
// Relational operation
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L258
MOV x0, #0
STR x0, [SP, #-8]!
B L259
L258:
MOV x0, #1
STR x0, [SP, #-8]!
L259:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L256 si exp(0) es verdadero
BNE L256
// Relational operation
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 6
MOV x0, #6
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L260
MOV x0, #0
STR x0, [SP, #-8]!
B L261
L260:
MOV x0, #1
STR x0, [SP, #-8]!
L261:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BNE L256
MOV x0, #0
B L257
L256:
MOV x0, #1
L257:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Variable declaration: resultadoOr4
// Logical operation: ||
// Relational operation
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 11
MOV x0, #11
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L264
MOV x0, #0
STR x0, [SP, #-8]!
B L265
L264:
MOV x0, #1
STR x0, [SP, #-8]!
L265:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L262 si exp(0) es verdadero
BNE L262
// Relational operation
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 6
MOV x0, #6
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L266
MOV x0, #0
STR x0, [SP, #-8]!
B L267
L266:
MOV x0, #1
STR x0, [SP, #-8]!
L267:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BNE L262
MOV x0, #0
B L263
L262:
MOV x0, #1
L263:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Print statement
// String constant: true || false:
STR x10, [SP, #-8]!
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: false || false:
STR x10, [SP, #-8]!
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: (10 == 10) || (5 == 6):
STR x10, [SP, #-8]!
// Pushing char 40 to heap - (
MOV w0, #40
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 41 to heap - )
MOV w0, #41
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 40 to heap - (
MOV w0, #40
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 54 to heap - 6
MOV w0, #54
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 41 to heap - )
MOV w0, #41
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: (10 == 11) || (5 == 6):
STR x10, [SP, #-8]!
// Pushing char 40 to heap - (
MOV w0, #40
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 41 to heap - )
MOV w0, #41
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 40 to heap - (
MOV w0, #40
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 53 to heap - 5
MOV w0, #53
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 54 to heap - 6
MOV w0, #54
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 41 to heap - )
MOV w0, #41
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// If statement
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Relational operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L274
MOV x0, #0
STR x0, [SP, #-8]!
B L275
L274:
MOV x0, #1
STR x0, [SP, #-8]!
L275:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L272 si exp(0) es falso 
BEQ L272
// Relational operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L276
MOV x0, #0
STR x0, [SP, #-8]!
B L277
L276:
MOV x0, #1
STR x0, [SP, #-8]!
L277:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L272
MOV x0, #1
B L273
// Saltar a etiquetra L272 si exp(0) es falso
L272:
MOV x0, #0
// Saltar a etiqueta L273 
L273:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L270 si exp(0) es falso 
BEQ L270
// Relational operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L278
MOV x0, #0
STR x0, [SP, #-8]!
B L279
L278:
MOV x0, #1
STR x0, [SP, #-8]!
L279:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L270
MOV x0, #1
B L271
// Saltar a etiquetra L270 si exp(0) es falso
L270:
MOV x0, #0
// Saltar a etiqueta L271 
L271:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L268 si exp(0) es falso 
BEQ L268
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L280
MOV x0, #0
STR x0, [SP, #-8]!
B L281
L280:
MOV x0, #1
STR x0, [SP, #-8]!
L281:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L268
MOV x0, #1
B L269
// Saltar a etiquetra L268 si exp(0) es falso
L268:
MOV x0, #0
// Saltar a etiqueta L269 
L269:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
// If-else statement
CBZ x0, L282
// Block statement
// Expression statement
// Assignment to variable: puntosOperacionesLogicas
// Add/Sub operation
// Visiting left operand
MOV x0, #64
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #64
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosOperacionesLogicas of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK OR: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 82 to heap - R
MOV w0, #82
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
B L283
L282:
// Block statement
// Print statement
// String constant: X OR: incorrecto
STR x10, [SP, #-8]!
// Pushing char 88 to heap - X
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 82 to heap - R
MOV w0, #82
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
L283:
// Print statement
// String constant: NOT
STR x10, [SP, #-8]!
// Pushing char 78 to heap - N
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 84 to heap - T
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: resultadoNot1
// Logical NOT operation
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
EOR x0, x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Variable declaration: resultadoNot2
// Logical NOT operation
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
EOR x0, x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Variable declaration: resultadoNot3
// Logical NOT operation
// Relational operation
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L284
MOV x0, #0
STR x0, [SP, #-8]!
B L285
L284:
MOV x0, #1
STR x0, [SP, #-8]!
L285:
// Pushing object  of type Bool
LDR x0, [SP], #8
EOR x0, x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Variable declaration: resultadoNot4
// Logical NOT operation
// Relational operation
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 11
MOV x0, #11
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L286
MOV x0, #0
STR x0, [SP, #-8]!
B L287
L286:
MOV x0, #1
STR x0, [SP, #-8]!
L287:
// Pushing object  of type Bool
LDR x0, [SP], #8
EOR x0, x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Print statement
// String constant: !true:
STR x10, [SP, #-8]!
// Pushing char 33 to heap - !
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: !false:
STR x10, [SP, #-8]!
// Pushing char 33 to heap - !
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: !(10 == 10):
STR x10, [SP, #-8]!
// Pushing char 33 to heap - !
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 40 to heap - (
MOV w0, #40
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 41 to heap - )
MOV w0, #41
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: !(10 == 11):
STR x10, [SP, #-8]!
// Pushing char 33 to heap - !
MOV w0, #33
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 40 to heap - (
MOV w0, #40
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 41 to heap - )
MOV w0, #41
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// If statement
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Relational operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L294
MOV x0, #0
STR x0, [SP, #-8]!
B L295
L294:
MOV x0, #1
STR x0, [SP, #-8]!
L295:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L292 si exp(0) es falso 
BEQ L292
// Relational operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L296
MOV x0, #0
STR x0, [SP, #-8]!
B L297
L296:
MOV x0, #1
STR x0, [SP, #-8]!
L297:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L292
MOV x0, #1
B L293
// Saltar a etiquetra L292 si exp(0) es falso
L292:
MOV x0, #0
// Saltar a etiqueta L293 
L293:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L290 si exp(0) es falso 
BEQ L290
// Relational operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L298
MOV x0, #0
STR x0, [SP, #-8]!
B L299
L298:
MOV x0, #1
STR x0, [SP, #-8]!
L299:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L290
MOV x0, #1
B L291
// Saltar a etiquetra L290 si exp(0) es falso
L290:
MOV x0, #0
// Saltar a etiqueta L291 
L291:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L288 si exp(0) es falso 
BEQ L288
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L300
MOV x0, #0
STR x0, [SP, #-8]!
B L301
L300:
MOV x0, #1
STR x0, [SP, #-8]!
L301:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L288
MOV x0, #1
B L289
// Saltar a etiquetra L288 si exp(0) es falso
L288:
MOV x0, #0
// Saltar a etiqueta L289 
L289:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
// If-else statement
CBZ x0, L302
// Block statement
// Expression statement
// Assignment to variable: puntosOperacionesLogicas
// Add/Sub operation
// Visiting left operand
MOV x0, #96
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #96
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosOperacionesLogicas of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK NOT: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 78 to heap - N
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 84 to heap - T
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
B L303
L302:
// Block statement
// Print statement
// String constant: X NOT: incorrecto
STR x10, [SP, #-8]!
// Pushing char 88 to heap - X
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 78 to heap - N
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 84 to heap - T
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
L303:
// Print statement
// String constant: \n==== fmt.Println ====
STR x10, [SP, #-8]!
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 80 to heap - P
MOV w0, #80
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: puntosPrintln
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Print statement
// String constant: \n\n###Validacion Manual
STR x10, [SP, #-8]!
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 35 to heap - #
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 35 to heap - #
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 35 to heap - #
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 86 to heap - V
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: Impresión de valores simples
STR x10, [SP, #-8]!
// Pushing char 73 to heap - I
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// Constant: 42
MOV x0, #42
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// Decimal constant: 3.14
MOVZ X0, #34079, LSL #0
MOVK X0, #20971, LSL #16
MOVK X0, #7864, LSL #32
MOVK X0, #16393, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
LDR d0, [SP], #8
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: Texto
STR x10, [SP, #-8]!
// Pushing char 84 to heap - T
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// Rune constant: 'A'
MOV x0, #65
STR x0, [SP, #-8]!
// Pushing object  of type Rune
LDR x0, [SP], #8
MOV X0, x0
BL print_rune
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 
STR x10, [SP, #-8]!
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Expression statement
// Assignment to variable: puntosPrintln
// Add/Sub operation
// Visiting left operand
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosPrintln of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Impresión de valores simples: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 73 to heap - I
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: Impresión de múltiples valores
STR x10, [SP, #-8]!
// Pushing char 73 to heap - I
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 250 to heap - ú
MOV w0, #250
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: Números:
STR x10, [SP, #-8]!
// Pushing char 78 to heap - N
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 250 to heap - ú
MOV w0, #250
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Constant: 42
MOV x0, #42
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Decimal constant: 3.14
MOVZ X0, #34079, LSL #0
MOVK X0, #20971, LSL #16
MOVK X0, #7864, LSL #32
MOVK X0, #16393, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
LDR d0, [SP], #8
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: Booleano:
STR x10, [SP, #-8]!
// Pushing char 66 to heap - B
MOV w0, #66
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// String constant: Texto:
STR x10, [SP, #-8]!
// Pushing char 84 to heap - T
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// String constant: Hola
STR x10, [SP, #-8]!
// Pushing char 72 to heap - H
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Expression statement
// Assignment to variable: puntosPrintln
// Add/Sub operation
// Visiting left operand
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosPrintln of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Impresión de múltiples valores: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 73 to heap - I
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 250 to heap - ú
MOV w0, #250
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: Impresión de expresiones
STR x10, [SP, #-8]!
// Pushing char 73 to heap - I
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: Suma:
STR x10, [SP, #-8]!
// Pushing char 83 to heap - S
MOV w0, #83
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Add/Sub operation
// Visiting left operand
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: Comparación:
STR x10, [SP, #-8]!
// Pushing char 67 to heap - C
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Relational operation
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BGT L304
MOV x0, #0
STR x0, [SP, #-8]!
B L305
L304:
MOV x0, #1
STR x0, [SP, #-8]!
L305:
// Pushing object  of type Bool
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: Lógica:
STR x10, [SP, #-8]!
// Pushing char 76 to heap - L
MOV w0, #76
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Logical operation: &&
// Starting AND operation
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L306 si exp(0) es falso 
BEQ L306
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L306
MOV x0, #1
B L307
// Saltar a etiquetra L306 si exp(0) es falso
L306:
MOV x0, #0
// Saltar a etiqueta L307 
L307:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Expression statement
// Assignment to variable: puntosPrintln
// Add/Sub operation
// Visiting left operand
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #0
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosPrintln of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Impresión de expresiones: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 73 to heap - I
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: \n==== Manejo de valor nulo ====
STR x10, [SP, #-8]!
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 106 to heap - j
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: puntosValorNulo
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Print statement
// String constant: Valores por defecto
STR x10, [SP, #-8]!
// Pushing char 86 to heap - V
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Variable declaration: enteroNulo of type int
// Default value
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Variable declaration: decimalNulo of type float64
// Default value
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #0, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Variable declaration: textoNulo of type string
// Default value
STR x10, [SP, #-8]!
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
// Variable declaration: booleanoNulo of type bool
// Default value
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Print statement
// String constant: \n\n###Validacion Manual
STR x10, [SP, #-8]!
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 35 to heap - #
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 35 to heap - #
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 35 to heap - #
MOV w0, #35
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 86 to heap - V
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: enteroNulo:
STR x10, [SP, #-8]!
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 78 to heap - N
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: decimalNulo:
STR x10, [SP, #-8]!
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 78 to heap - N
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: textoNulo:
STR x10, [SP, #-8]!
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 120 to heap - x
MOV w0, #120
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 78 to heap - N
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: booleanoNulo:
STR x10, [SP, #-8]!
// Pushing char 98 to heap - b
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 78 to heap - N
MOV w0, #78
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: 
STR x10, [SP, #-8]!
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// If statement
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Logical operation: &&
// Starting AND operation
// Relational operation
MOV x0, #24
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Constant: 0
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L314
MOV x0, #0
STR x0, [SP, #-8]!
B L315
L314:
MOV x0, #1
STR x0, [SP, #-8]!
L315:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L312 si exp(0) es falso 
BEQ L312
// Relational operation
MOV x0, #16
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Decimal constant: 0.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #0, LSL #48
STR x0, [SP, #-8]!
// Pushing object  of type Float
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d1, d0
BEQ L316
MOV x0, #0
STR x0, [SP, #-8]!
B L317
L316:
MOV x0, #1
STR x0, [SP, #-8]!
L317:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L312
MOV x0, #1
B L313
// Saltar a etiquetra L312 si exp(0) es falso
L312:
MOV x0, #0
// Saltar a etiqueta L313 
L313:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L310 si exp(0) es falso 
BEQ L310
// Relational operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type String
// String constant: 
STR x10, [SP, #-8]!
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
// String comparison
BL compare_strings
CBZ x0, L318
MOV x0, #0
STR x0, [SP, #-8]!
B L319
L318:
MOV x0, #1
STR x0, [SP, #-8]!
L319:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L310
MOV x0, #1
B L311
// Saltar a etiquetra L310 si exp(0) es falso
L310:
MOV x0, #0
// Saltar a etiqueta L311 
L311:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
// Saltar a etiqueta L308 si exp(0) es falso 
BEQ L308
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Pushing object  of type Bool
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L320
MOV x0, #0
STR x0, [SP, #-8]!
B L321
L320:
MOV x0, #1
STR x0, [SP, #-8]!
L321:
// Pushing object  of type Bool
LDR x0, [SP], #8
CMP x0, 0
BEQ L308
MOV x0, #1
B L309
// Saltar a etiquetra L308 si exp(0) es falso
L308:
MOV x0, #0
// Saltar a etiqueta L309 
L309:
STR x0, [SP, #-8]!
// Pushing object  of type Bool
LDR x0, [SP], #8
// If-else statement
CBZ x0, L322
// Block statement
// Expression statement
// Assignment to variable: puntosValorNulo
// Add/Sub operation
// Visiting left operand
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #32
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosValorNulo of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Valores por defecto: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 86 to heap - V
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
B L323
L322:
// Block statement
// Print statement
// String constant: X Valores por defecto: incorrecto
STR x10, [SP, #-8]!
// Pushing char 88 to heap - X
MOV w0, #88
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 86 to heap - V
MOV w0, #86
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
L323:
// Print statement
// String constant: Operaciones con nil
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Expression statement
// Assignment to variable: puntosValorNulo
// Add/Sub operation
// Visiting left operand
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #32
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntosValorNulo of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: OK Operaciones con nil: correcto
STR x10, [SP, #-8]!
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 75 to heap - K
MOV w0, #75
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Expression statement
// Assignment to variable: puntos
// Add/Sub operation
// Visiting left operand
// Add/Sub operation
// Visiting left operand
// Add/Sub operation
// Visiting left operand
// Add/Sub operation
// Visiting left operand
// Add/Sub operation
// Visiting left operand
// Add/Sub operation
// Visiting left operand
MOV x0, #488
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
MOV x0, #384
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
MOV x0, #376
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
MOV x0, #272
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
MOV x0, #152
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
MOV x0, #48
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Visiting right operand
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Pushing object  of type Int
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Pushing object  of type Int
LDR x0, [SP], #8
MOV x1, #496
ADD x1, sp, x1
STR x0, [x1, #0]
STR x0, [SP, #-8]!
// Pushing object puntos of type Int
// Popping value to discard
LDR x0, [SP], #8
// Print statement
// String constant: \n=== Tabla de Resultados ===
STR x10, [SP, #-8]!
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 84 to heap - T
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 98 to heap - b
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 82 to heap - R
MOV w0, #82
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 61 to heap - =
MOV w0, #61
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: +--------------------------+--------+-------+
STR x10, [SP, #-8]!
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: | Característica           | Puntos | Total |
STR x10, [SP, #-8]!
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 67 to heap - C
MOV w0, #67
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 237 to heap - í
MOV w0, #237
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 80 to heap - P
MOV w0, #80
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 84 to heap - T
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: +--------------------------+--------+-------+
STR x10, [SP, #-8]!
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: | Declaración de variables | 
STR x10, [SP, #-8]!
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 68 to heap - D
MOV w0, #68
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 98 to heap - b
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #488
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// String constant:     | 3     |
STR x10, [SP, #-8]!
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 51 to heap - 3
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: | Asignación de variables  | 
STR x10, [SP, #-8]!
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 98 to heap - b
MOV w0, #98
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #376
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// String constant:     | 3     |
STR x10, [SP, #-8]!
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 51 to heap - 3
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: | Operaciones Aritméticas  | 
STR x10, [SP, #-8]!
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 233 to heap - é
MOV w0, #233
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #368
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// String constant:     | 3     |
STR x10, [SP, #-8]!
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 51 to heap - 3
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: | Operaciones Relacionales | 
STR x10, [SP, #-8]!
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 82 to heap - R
MOV w0, #82
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #264
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// String constant:     | 3     |
STR x10, [SP, #-8]!
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 51 to heap - 3
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: | Operaciones Lógicas      | 
STR x10, [SP, #-8]!
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 112 to heap - p
MOV w0, #112
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 76 to heap - L
MOV w0, #76
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 99 to heap - c
MOV w0, #99
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 115 to heap - s
MOV w0, #115
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #144
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// String constant:     | 3     |
STR x10, [SP, #-8]!
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 51 to heap - 3
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: | fmt.Println              | 
STR x10, [SP, #-8]!
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 102 to heap - f
MOV w0, #102
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 109 to heap - m
MOV w0, #109
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 80 to heap - P
MOV w0, #80
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #40
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// String constant:     | 3     |
STR x10, [SP, #-8]!
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 51 to heap - 3
MOV w0, #51
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: | Manejo de valor nulo     | 
STR x10, [SP, #-8]!
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 106 to heap - j
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 118 to heap - v
MOV w0, #118
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 114 to heap - r
MOV w0, #114
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 117 to heap - u
MOV w0, #117
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 108 to heap - l
MOV w0, #108
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #32
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// String constant:     | 2     |
STR x10, [SP, #-8]!
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 50 to heap - 2
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: +--------------------------+--------+-------+
STR x10, [SP, #-8]!
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: | TOTAL                    | 
STR x10, [SP, #-8]!
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 84 to heap - T
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 79 to heap - O
MOV w0, #79
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 84 to heap - T
MOV w0, #84
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 65 to heap - A
MOV w0, #65
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 76 to heap - L
MOV w0, #76
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #496
ADD x0, sp, x0
LDR x0, [x0, #0]
MOV X0, x0
BL print_integer
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// String constant:    | 20    |
STR x10, [SP, #-8]!
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 50 to heap - 2
MOV w0, #50
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 124 to heap - |
MOV w0, #124
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
// Print statement
// String constant: +--------------------------+--------+-------+
STR x10, [SP, #-8]!
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 45 to heap - -
MOV w0, #45
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 43 to heap - +
MOV w0, #43
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap -  
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing object  of type String
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
ADD sp, sp, 8
MOV x0, #0
MOV x8, #93
SVC #0



// Funciones Foraneas



// Libreria Estandar

//--------------------------------------------------------------
// print_string - Prints a null-terminated string to stdout
//
// Input:
//   x0 - The address of the null-terminated string to print
//--------------------------------------------------------------
print_string:
    // Save link register and other registers we'll use
    stp     x29, x30, [sp, #-16]!
    stp     x19, x20, [sp, #-16]!
    
    // x19 will hold the string address
    mov     x19, x0
    
print_loop:
    // Load a byte from the string
    ldrb    w20, [x19]
    
    // Check if it's the null terminator (0)
    cbz     w20, print_done
    
    // Prepare for write syscall
    mov     x0, #1              // File descriptor: 1 for stdout
    mov     x1, x19             // Address of the character to print
    mov     x2, #1              // Length: 1 byte
    mov     x8, #64             // syscall: write (64 on ARM64)
    svc     #0                  // Make the syscall
    
    // Move to the next character
    add     x19, x19, #1
    
    // Continue the loop
    b       print_loop
    
print_done:
    // Restore saved registers
    ldp     x19, x20, [sp], #16
    ldp     x29, x30, [sp], #16
    ret
    // Return to the caller
    

//--------------------------------------------------------------
// print_integer - Prints a signed integer to stdout
//
// Input:
//   x0 - The integer value to print
//--------------------------------------------------------------
print_integer:
    // Save registers
    stp x29, x30, [sp, #-16]!  // Save frame pointer and link register
    stp x19, x20, [sp, #-16]!  // Save callee-saved registers
    stp x21, x22, [sp, #-16]!
    stp x23, x24, [sp, #-16]!
    stp x25, x26, [sp, #-16]!
    stp x27, x28, [sp, #-16]!
    
    // Check if number is negative
    mov x19, x0                // Save original number
    cmp x19, #0                // Compare with zero
    bge positive_number        // Branch if greater or equal to zero
    
    // Handle negative number
    mov x0, #1                 // fd = 1 (stdout)
    adr x1, minus_sign         // Address of minus sign
    mov x2, #1                 // Length = 1
    mov w8, #64                // Syscall write
    svc #0
    
    neg x19, x19               // Make number positive
    
positive_number:
    // Prepare buffer for converting result to ASCII
    sub sp, sp, #32            // Reserve space on stack
    mov x22, sp                // x22 points to buffer
    
    // Initialize digit counter
    mov x23, #0                // Digit counter
    
    // Handle special case for zero
    cmp x19, #0
    bne convert_loop
    
    // If number is zero, just write '0'
    mov w24, #48               // ASCII '0'
    strb w24, [x22, x23]       // Store in buffer
    add x23, x23, #1           // Increment counter
    b print_result             // Skip conversion loop
    
convert_loop:
    // Divide the number by 10
    mov x24, #10
    udiv x25, x19, x24         // x25 = x19 / 10 (quotient)
    msub x26, x25, x24, x19    // x26 = x19 - (x25 * 10) (remainder)
    
    // Convert remainder to ASCII and store in buffer
    add x26, x26, #48          // Convert to ASCII ('0' = 48)
    strb w26, [x22, x23]       // Store digit in buffer
    add x23, x23, #1           // Increment digit counter
    
    // Prepare for next iteration
    mov x19, x25               // Quotient becomes the new number
    cbnz x19, convert_loop     // If number is not zero, continue
    
    // Reverse the buffer since digits are in reverse order
    mov x27, #0                // Start index
reverse_loop:
    sub x28, x23, x27          // x28 = length - current index
    sub x28, x28, #1           // x28 = length - current index - 1
    
    cmp x27, x28               // Compare indices
    bge print_result           // If crossed, finish reversing
    
    // Swap characters
    ldrb w24, [x22, x27]       // Load character from start
    ldrb w25, [x22, x28]       // Load character from end
    strb w25, [x22, x27]       // Store end character at start
    strb w24, [x22, x28]       // Store start character at end
    
    add x27, x27, #1           // Increment start index
    b reverse_loop             // Continue reversing
    
print_result:
    // Print the result
    mov x0, #1                 // fd = 1 (stdout)
    mov x1, x22                // Buffer address
    mov x2, x23                // Buffer length
    mov w8, #64                // Syscall write
    svc #0
    
    // Clean up and restore registers
    add sp, sp, #32            // Free buffer space
    ldp x27, x28, [sp], #16    // Restore callee-saved registers
    ldp x25, x26, [sp], #16
    ldp x23, x24, [sp], #16
    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16    // Restore frame pointer and link register
    ret                        // Return to caller
    

//--------------------------------------------------------------
// print_double - Prints a double precision float to stdout
//
// Input:
//   d0 - The double value to print
//--------------------------------------------------------------
print_double:
    // Save context
    stp x29, x30, [sp, #-16]!    
    stp x19, x20, [sp, #-16]!
    stp x21, x22, [sp, #-16]!
    stp x23, x24, [sp, #-16]!
    
    // Check if number is negative
    fmov x19, d0
    tst x19, #(1 << 63)       // Comprueba el bit de signo
    beq skip_minus

    // Print minus sign
    mov x0, #1
    adr x1, minus_sign
    mov x2, #1
    mov x8, #64
    svc #0

    // Make value positive
    fneg d0, d0

skip_minus:
    // Convert integer part
    fcvtzs x0, d0             // x0 = int(d0)
    bl print_integer

    // Print dot '.'
    mov x0, #1
    adr x1, dot_char
    mov x2, #1
    mov x8, #64
    svc #0

    // Get fractional part: frac = d0 - float(int(d0))
    frintm d4, d0             // d4 = floor(d0)
    fsub d2, d0, d4           // d2 = d0 - floor(d0) (exact fraction)

    // Para 2.5, d2 debe ser exactamente 0.5

    // Multiplicar por 1_000_000 (6 decimales)
    movz x1, #0x000F, lsl #16
    movk x1, #0x4240, lsl #0   // x1 = 1000000
    scvtf d3, x1              // d3 = 1000000.0
    fmul d2, d2, d3           // d2 = frac * 1_000_000
    
    // Redondear al entero más cercano para evitar errores de precisión
    frintn d2, d2             // d2 = round(d2)
    fcvtzs x0, d2             // x0 = int(d2)

    // Imprimir ceros a la izquierda si es necesario
    mov x20, x0               // x20 = fracción entera
    movz x21, #0x0001, lsl #16
    movk x21, #0x86A0, lsl #0  // x21 = 100000
    mov x22, #0               // inicializar contador de ceros
    mov x23, #10              // constante para división

leading_zero_loop:
    udiv x24, x20, x21        // x24 = x20 / x21
    cbnz x24, done_leading_zeros  // Si hay un dígito no cero, salir del bucle

    // Imprimir '0'
    mov x0, #1
    adr x1, zero_char
    mov x2, #1
    mov x8, #64
    svc #0

    udiv x21, x21, x23        // x21 /= 10
    add x22, x22, #1          // incrementar contador de ceros
    cmp x21, #0               // verificar si llegamos al final
    beq print_remaining       // si divisor es 0, saltar a imprimir el resto
    b leading_zero_loop

done_leading_zeros:
    // Print the remaining fractional part
    mov x0, x20
    bl print_integer
    b exit_function

print_remaining:
    // Caso especial cuando la parte fraccionaria es 0 después de imprimir ceros
    cmp x20, #0
    bne exit_function
    
    // Ya imprimimos todos los ceros necesarios
    // No hace falta imprimir nada más

exit_function:
    // Restore context
    ldp x23, x24, [sp], #16
    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret
    

//--------------------------------------------------------------
// print_bool - Prints a boolean value to stdout
//
// Input:
//   x0 - The boolean value to print (0=false, 1=true)
//--------------------------------------------------------------
print_bool:
    // Save registers
    stp x29, x30, [sp, #-16]!
    stp x19, x20, [sp, #-16]!
    
    // Save and normalize the value
    // Asegurarse que cualquier valor no-cero sea tratado como true
    cmp x0, #0
    cset x19, ne    // Set x19 to 1 if x0 != 0, otherwise 0
    
    // Compare with 0
    cbz x19, print_false
    
    // Print 'true'
    mov x0, #1
    adr x1, true_str
    mov x2, #4
    mov x8, #64
    svc #0
    b print_bool_done
    
print_false:
    // Print 'false'
    mov x0, #1
    adr x1, false_str
    mov x2, #5
    mov x8, #64
    svc #0
    
print_bool_done:
    // Restore registers
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret


//--------------------------------------------------------------
// print_rune - Prints a single character to stdout
//
// Input:
//   x0 - The rune value to print (ASCII code)
//--------------------------------------------------------------
print_rune:
  // Save registers
  stp x29, x30, [sp, #-16]!
  
  // Store the rune on the stack
  sub sp, sp, #16
  strb w0, [sp]
  mov x1, sp     // Buffer address for syscall
  
  // Print the character
  mov x0, #1     // File descriptor: 1 for stdout
  mov x2, #1     // Length: 1 byte
  mov x8, #64    // syscall: write
  svc #0
  
  // Restore stack
  add sp, sp, #16
  
  // Restore registers
  ldp x29, x30, [sp], #16
  ret
  

//--------------------------------------------------------------
// compare_strings - Compares two strings and returns 0 if equal, 1 if different
//
// Input:
//   x0 - Address of first string
//   x1 - Address of second string
// Output:
//   x0 - 0 if equal, 1 if different
//--------------------------------------------------------------
compare_strings:
    // Save registers
    stp x29, x30, [sp, #-16]!
    stp x19, x20, [sp, #-16]!
    
compare_loop:
    // Load one byte from each string
    ldrb w19, [x0], #1
    ldrb w20, [x1], #1
    
    // Compare bytes
    cmp w19, w20
    bne strings_different   // If bytes differ, strings are different
    
    // Check if we reached end of string (null terminator)
    cbz w19, strings_equal  // If we hit null terminator and bytes were equal, strings are equal
    b compare_loop         // Otherwise, continue comparing
    
strings_different:
    mov x0, #1            // Return 1 (different)
    b compare_done
    
strings_equal:
    mov x0, #0            // Return 0 (equal)
    
compare_done:
    // Restore registers
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret
minus_sign: .ascii "-"
dot_char: .ascii "."
zero_char: .ascii "0"
true_str: .ascii "true"
false_str: .ascii "false"
