.data
heap: .space 4096
.text
.global _start
_start:
    adr x10, heap
// Print statement
// Visiting expression
// String constant: === Operaciones con Enteros ===
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
// Pushing char 69 to heap - E
MOV w0, #69
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
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
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
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Visiting expression
// Add/Sub operation
// Visiting left operand
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right operand
// Constant: 2
MOV x0, #2
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
ADD x0, x0, x1
// Pushing result
STR x0, [SP, #-8]!
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: Resta:
STR x10, [SP, #-8]!
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
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Visiting expression
// Add/Sub operation
// Visiting left operand
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right operand
// Constant: 2
MOV x0, #2
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
SUB x0, x1, x0
// Pushing result
STR x0, [SP, #-8]!
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: Multiplicación:
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
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Visiting expression
// Mul/Div operation
// Visiting left operand
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right operand
// Constant: 2
MOV x0, #2
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
MUL x0, x1, x0
// Pushing result
STR x0, [SP, #-8]!
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: División:
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
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Visiting expression
// Mul/Div operation
// Visiting left operand
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right operand
// Constant: 2
MOV x0, #2
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
SDIV x0, x1, x0
// Pushing result
STR x0, [SP, #-8]!
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: Módulo:
STR x10, [SP, #-8]!
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 243 to heap - ó
MOV w0, #243
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 100 to heap - d
MOV w0, #100
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
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Visiting expression
// Mod operation
// Visiting left operand
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right operand
// Constant: 2
MOV x0, #2
STR x0, [SP, #-8]!
// Popping operands
LDR x1, [SP], #8
LDR x0, [SP], #8
// Calculate modulo
SDIV x2, x0, x1
MUL x2, x2, x1
SUB x0, x0, x2
// Push result
STR x0, [SP, #-8]!
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_integer
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: \n=== Operaciones con Decimales ===
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
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
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
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Visiting expression
// Add/Sub operation
// Visiting left operand
// Decimal constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Visiting right operand
// Decimal constant: 2.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16388, LSL #48
STR x0, [SP, #-8]!
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
FADD d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Popping value to print
LDR d0, [SP], #8
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: Resta:
STR x10, [SP, #-8]!
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
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Visiting expression
// Add/Sub operation
// Visiting left operand
// Decimal constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Visiting right operand
// Decimal constant: 2.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16388, LSL #48
STR x0, [SP, #-8]!
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
FSUB d0, d1, d0
// Pushing result
STR d0, [SP, #-8]!
// Popping value to print
LDR d0, [SP], #8
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: Multiplicación:
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
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Visiting expression
// Mul/Div operation
// Visiting left operand
// Decimal constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Visiting right operand
// Decimal constant: 2.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16388, LSL #48
STR x0, [SP, #-8]!
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
FMUL d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Popping value to print
LDR d0, [SP], #8
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: División:
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
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Visiting expression
// Mul/Div operation
// Visiting left operand
// Decimal constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Visiting right operand
// Decimal constant: 2.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16388, LSL #48
STR x0, [SP, #-8]!
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
FDIV d0, d1, d0
// Pushing result
STR d0, [SP, #-8]!
// Popping value to print
LDR d0, [SP], #8
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: \n=== Operaciones Mixtas ===
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
// Pushing char 77 to heap - M
MOV w0, #77
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 105 to heap - i
MOV w0, #105
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
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
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
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Visiting expression
// Add/Sub operation
// Visiting left operand
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right operand
// Decimal constant: 2.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16388, LSL #48
STR x0, [SP, #-8]!
// Popping operands
LDR d0, [SP], #8
LDR x1, [SP], #8
SCVTF d1, x1
FADD d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Popping value to print
LDR d0, [SP], #8
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: Resta:
STR x10, [SP, #-8]!
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
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Visiting expression
// Add/Sub operation
// Visiting left operand
// Decimal constant: 10.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16421, LSL #48
STR x0, [SP, #-8]!
// Visiting right operand
// Constant: 2
MOV x0, #2
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR d1, [SP], #8
SCVTF d0, x0
FSUB d0, d1, d0
// Pushing result
STR d0, [SP, #-8]!
// Popping value to print
LDR d0, [SP], #8
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: Multiplicación:
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
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Visiting expression
// Mul/Div operation
// Visiting left operand
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Visiting right operand
// Decimal constant: 2.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16388, LSL #48
STR x0, [SP, #-8]!
// Popping operands
LDR d0, [SP], #8
LDR x1, [SP], #8
SCVTF d1, x1
FMUL d0, d0, d1
// Pushing result
STR d0, [SP, #-8]!
// Popping value to print
LDR d0, [SP], #8
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: División:
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
// Pushing char 58 to heap - :
MOV w0, #58
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_string
// Print space between values
MOV w0, #32
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Visiting expression
// Mul/Div operation
// Visiting left operand
// Decimal constant: 10.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16420, LSL #48
STR x0, [SP, #-8]!
// Visiting right operand
// Constant: 2
MOV x0, #2
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR d1, [SP], #8
SCVTF d0, x0
FDIV d0, d1, d0
// Pushing result
STR d0, [SP, #-8]!
// Popping value to print
LDR d0, [SP], #8
BL print_double
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
MOV x0, #0
MOV x8, #93
SVC #0



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
    
minus_sign: .ascii "-"
dot_char: .ascii "."
zero_char: .ascii "0"