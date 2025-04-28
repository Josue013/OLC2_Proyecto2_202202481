.data
heap: .space 4096
.text
.global _start
_start:
    adr x10, heap
// Print statement
// Visiting expression
// String constant: === Comparaciones entre enteros ===
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
// String constant: 1 == 1:
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
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
// Relational operation
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BEQ L0
MOV x0, #0
STR x0, [SP, #-8]!
B L1
L0:
MOV x0, #1
STR x0, [SP, #-8]!
L1:
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: 1 != 1:
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 33 to heap - !
MOV w0, #33
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
// Relational operation
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Constant: 1
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BNE L2
MOV x0, #0
STR x0, [SP, #-8]!
B L3
L2:
MOV x0, #1
STR x0, [SP, #-8]!
L3:
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: \n=== Comparaciones entre decimales ===
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
// String constant: 13.0 == 13.0:
STR x10, [SP, #-8]!
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 51 to heap - 3
MOV w0, #51
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
// Pushing char 51 to heap - 3
MOV w0, #51
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
// Relational operation
// Decimal constant: 13.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16426, LSL #48
STR x0, [SP, #-8]!
// Decimal constant: 13.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #0, LSL #32
MOVK X0, #16426, LSL #48
STR x0, [SP, #-8]!
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d0, d1
BEQ L4
MOV x0, #0
STR x0, [SP, #-8]!
B L5
L4:
MOV x0, #1
STR x0, [SP, #-8]!
L5:
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: 0.001 != 0.001:
STR x10, [SP, #-8]!
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
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 32 to heap -  
MOV w0, #32
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 33 to heap - !
MOV w0, #33
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
// Pushing char 48 to heap - 0
MOV w0, #48
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 49 to heap - 1
MOV w0, #49
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
// Relational operation
// Decimal constant: 0.001
MOVZ X0, #43516, LSL #0
MOVK X0, #54001, LSL #16
MOVK X0, #25165, LSL #32
MOVK X0, #16208, LSL #48
STR x0, [SP, #-8]!
// Decimal constant: 0.001
MOVZ X0, #43516, LSL #0
MOVK X0, #54001, LSL #16
MOVK X0, #25165, LSL #32
MOVK X0, #16208, LSL #48
STR x0, [SP, #-8]!
// Popping operands
LDR d0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
FCMP d0, d1
BNE L6
MOV x0, #0
STR x0, [SP, #-8]!
B L7
L6:
MOV x0, #1
STR x0, [SP, #-8]!
L7:
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: \n=== Comparaciones mixtas ===
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
// String constant: 35 == 35.0:
STR x10, [SP, #-8]!
// Pushing char 51 to heap - 3
MOV w0, #51
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
// Pushing char 51 to heap - 3
MOV w0, #51
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
// Relational operation
// Constant: 35
MOV x0, #35
STR x0, [SP, #-8]!
// Decimal constant: 35.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #32768, LSL #32
MOVK X0, #16449, LSL #48
STR x0, [SP, #-8]!
// Popping operands
LDR d0, [SP], #8
LDR x1, [SP], #8
// Comparing decimal values
SCVTF d1, x1
FCMP d0, d1
BEQ L8
MOV x0, #0
STR x0, [SP, #-8]!
B L9
L8:
MOV x0, #1
STR x0, [SP, #-8]!
L9:
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: 98.0 == 98:
STR x10, [SP, #-8]!
// Pushing char 57 to heap - 9
MOV w0, #57
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 56 to heap - 8
MOV w0, #56
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
// Pushing char 57 to heap - 9
MOV w0, #57
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 56 to heap - 8
MOV w0, #56
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
// Relational operation
// Decimal constant: 98.0
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #32768, LSL #32
MOVK X0, #16472, LSL #48
STR x0, [SP, #-8]!
// Constant: 98
MOV x0, #98
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
SCVTF d0, x0
FCMP d0, d1
BEQ L10
MOV x0, #0
STR x0, [SP, #-8]!
B L11
L10:
MOV x0, #1
STR x0, [SP, #-8]!
L11:
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: 95.5 == 95:
STR x10, [SP, #-8]!
// Pushing char 57 to heap - 9
MOV w0, #57
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
// Pushing char 57 to heap - 9
MOV w0, #57
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
// Relational operation
// Decimal constant: 95.5
MOVZ X0, #0, LSL #0
MOVK X0, #0, LSL #16
MOVK X0, #57344, LSL #32
MOVK X0, #16471, LSL #48
STR x0, [SP, #-8]!
// Constant: 95
MOV x0, #95
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR d1, [SP], #8
// Comparing decimal values
SCVTF d0, x0
FCMP d0, d1
BEQ L12
MOV x0, #0
STR x0, [SP, #-8]!
B L13
L12:
MOV x0, #1
STR x0, [SP, #-8]!
L13:
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: \n=== Comparaciones entre booleanos ===
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
// String constant: true == false:
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
// Relational operation
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
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
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: false != true:
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
// Pushing char 33 to heap - !
MOV w0, #33
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
// Relational operation
// Boolean constant: false
MOV x0, #0
STR x0, [SP, #-8]!
// Boolean constant: true
MOV x0, #1
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BNE L16
MOV x0, #0
STR x0, [SP, #-8]!
B L17
L16:
MOV x0, #1
STR x0, [SP, #-8]!
L17:
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: \n=== Comparaciones entre cadenas ===
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
// String constant: \"ho\" == \"Ha\":
STR x10, [SP, #-8]!
// Pushing char 34 to heap - "
MOV w0, #34
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 104 to heap - h
MOV w0, #104
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
// Relational operation
// String constant: ho
STR x10, [SP, #-8]!
// Pushing char 104 to heap - h
MOV w0, #104
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 111 to heap - o
MOV w0, #111
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// String constant: Ha
STR x10, [SP, #-8]!
// Pushing char 72 to heap - H
MOV w0, #72
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 97 to heap - a
MOV w0, #97
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
// String comparison
BL compare_strings
CBZ x0, L18
MOV x0, #0
STR x0, [SP, #-8]!
B L19
L18:
MOV x0, #1
STR x0, [SP, #-8]!
L19:
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Print statement
// Visiting expression
// String constant: \"Ho\" != \"Ho\":
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
// Pushing char 33 to heap - !
MOV w0, #33
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
// Relational operation
// String constant: Ho
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
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// String constant: Ho
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
// Pushing char 0 to heap - 
MOV w0, #0
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
// String comparison
BL compare_strings
CBNZ x0, L20
MOV x0, #0
STR x0, [SP, #-8]!
B L21
L20:
MOV x0, #1
STR x0, [SP, #-8]!
L21:
// Popping value to print
LDR x0, [SP], #8
MOV X0, x0
BL print_bool
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
// print_bool - Prints a boolean value to stdout
//
// Input:
//   x0 - The boolean value to print (0=false, 1=true)
//--------------------------------------------------------------
print_bool:
    // Save registers
    stp x29, x30, [sp, #-16]!
    stp x19, x20, [sp, #-16]!
    
    // Save the value
    mov x19, x0
    
    // Compare with 0
    cmp x19, #0
    beq print_false
    
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
true_str: .ascii "true"
false_str: .ascii "false"