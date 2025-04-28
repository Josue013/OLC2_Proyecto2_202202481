.data
heap: .space 4096
.text
.global _start
_start:
    adr x10, heap
// Print statement
// Visiting expression
// String constant: **************
STR x10, [SP, #-8]!
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
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
// String constant: ***** IF *****
STR x10, [SP, #-8]!
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
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
// Pushing char 73 to heap - I
MOV w0, #73
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 70 to heap - F
MOV w0, #70
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
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
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
// String constant: **************\n
STR x10, [SP, #-8]!
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 42 to heap - *
MOV w0, #42
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 10 to heap - LF
MOV w0, #10
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
// String constant: Ejemplo 1:
STR x10, [SP, #-8]!
// Pushing char 69 to heap - E
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 106 to heap - j
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
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
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Variable declaration: time
// Constant: 5
MOV x0, #5
STR x0, [SP, #-8]!
// If statement
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BLT L0
MOV x0, #0
STR x0, [SP, #-8]!
B L1
L0:
MOV x0, #1
STR x0, [SP, #-8]!
L1:
LDR x0, [SP], #8
// If-else statement
CBZ x0, L2
// Block statement
// Print statement
// Visiting expression
// String constant: Good Morning.
STR x10, [SP, #-8]!
// Pushing char 71 to heap - G
MOV w0, #71
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
// Pushing char 100 to heap - d
MOV w0, #100
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
// Pushing char 110 to heap - n
MOV w0, #110
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
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
B L3
L2:
// If statement
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant: 20
MOV x0, #20
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BLT L4
MOV x0, #0
STR x0, [SP, #-8]!
B L5
L4:
MOV x0, #1
STR x0, [SP, #-8]!
L5:
LDR x0, [SP], #8
// If-else statement
CBZ x0, L6
// Block statement
// Print statement
// Visiting expression
// String constant: Good Day.
STR x10, [SP, #-8]!
// Pushing char 71 to heap - G
MOV w0, #71
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
// Pushing char 100 to heap - d
MOV w0, #100
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
// Pushing char 46 to heap - .
MOV w0, #46
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
B L7
L6:
// Block statement
// Print statement
// Visiting expression
// String constant: Good Evening.
STR x10, [SP, #-8]!
// Pushing char 71 to heap - G
MOV w0, #71
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
// Pushing char 100 to heap - d
MOV w0, #100
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
// Pushing char 118 to heap - v
MOV w0, #118
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
// Pushing char 103 to heap - g
MOV w0, #103
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 46 to heap - .
MOV w0, #46
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
L7:
L3:
// Print statement
// Visiting expression
// String constant: \nEjemplo 2:
STR x10, [SP, #-8]!
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 69 to heap - E
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 106 to heap - j
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
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
// Pushing char 50 to heap - 2
MOV w0, #50
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
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Variable declaration: a
// Constant: 14
MOV x0, #14
STR x0, [SP, #-8]!
// Variable declaration: b
// Constant: 14
MOV x0, #14
STR x0, [SP, #-8]!
// If statement
// Relational operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BLT L8
MOV x0, #0
STR x0, [SP, #-8]!
B L9
L8:
MOV x0, #1
STR x0, [SP, #-8]!
L9:
LDR x0, [SP], #8
// If-else statement
CBZ x0, L10
// Block statement
// Print statement
// Visiting expression
// String constant: a is less than b.
STR x10, [SP, #-8]!
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
// Pushing char 32 to heap -  
MOV w0, #32
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
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 104 to heap - h
MOV w0, #104
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
// Pushing char 46 to heap - .
MOV w0, #46
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
B L11
L10:
// If statement
// Relational operation
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
MOV x0, #8
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BGT L12
MOV x0, #0
STR x0, [SP, #-8]!
B L13
L12:
MOV x0, #1
STR x0, [SP, #-8]!
L13:
LDR x0, [SP], #8
// If-else statement
CBZ x0, L14
// Block statement
// Print statement
// Visiting expression
// String constant: b is more than b.
STR x10, [SP, #-8]!
// Pushing char 98 to heap - b
MOV w0, #98
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
// Pushing char 104 to heap - h
MOV w0, #104
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
// Pushing char 46 to heap - .
MOV w0, #46
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
B L15
L14:
// Block statement
// Print statement
// Visiting expression
// String constant: a and b are equal
STR x10, [SP, #-8]!
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
// Pushing char 100 to heap - d
MOV w0, #100
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
// Pushing char 32 to heap -  
MOV w0, #32
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
// Pushing char 113 to heap - q
MOV w0, #113
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
L15:
L11:
// Print statement
// Visiting expression
// String constant: \nEjemplo 3:
STR x10, [SP, #-8]!
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 69 to heap - E
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 106 to heap - j
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
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
// Pushing char 51 to heap - 3
MOV w0, #51
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
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Variable declaration: x
// Constant: 30
MOV x0, #30
STR x0, [SP, #-8]!
// If statement
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BGE L16
MOV x0, #0
STR x0, [SP, #-8]!
B L17
L16:
MOV x0, #1
STR x0, [SP, #-8]!
L17:
LDR x0, [SP], #8
// If-else statement
CBZ x0, L18
// Block statement
// Print statement
// Visiting expression
// String constant: x is larger than or equal to 10.
STR x10, [SP, #-8]!
// Pushing char 120 to heap - x
MOV w0, #120
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
// Pushing char 103 to heap - g
MOV w0, #103
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
// Pushing char 104 to heap - h
MOV w0, #104
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
// Pushing char 101 to heap - e
MOV w0, #101
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 113 to heap - q
MOV w0, #113
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
B L19
L18:
// If statement
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant: 20
MOV x0, #20
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BGT L20
MOV x0, #0
STR x0, [SP, #-8]!
B L21
L20:
MOV x0, #1
STR x0, [SP, #-8]!
L21:
LDR x0, [SP], #8
// If-else statement
CBZ x0, L22
// Block statement
// Print statement
// Visiting expression
// String constant: x is larger than 20.
STR x10, [SP, #-8]!
// Pushing char 120 to heap - x
MOV w0, #120
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
// Pushing char 103 to heap - g
MOV w0, #103
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
// Pushing char 104 to heap - h
MOV w0, #104
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
// Pushing char 46 to heap - .
MOV w0, #46
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
B L23
L22:
// Block statement
// Print statement
// Visiting expression
// String constant: x is less than 10.
STR x10, [SP, #-8]!
// Pushing char 120 to heap - x
MOV w0, #120
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
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 104 to heap - h
MOV w0, #104
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
L23:
L19:
// Print statement
// Visiting expression
// String constant: \nEjemplo 4:
STR x10, [SP, #-8]!
// Pushing char 10 to heap - LF
MOV w0, #10
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 69 to heap - E
MOV w0, #69
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 106 to heap - j
MOV w0, #106
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 101 to heap - e
MOV w0, #101
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
// Pushing char 52 to heap - 4
MOV w0, #52
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
// Print newline
MOV w0, #10
STR x0, [SP, #-8]!
MOV X0, sp
BL print_string
// Variable declaration: num
// Constant: 20
MOV x0, #20
STR x0, [SP, #-8]!
// If statement
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant: 10
MOV x0, #10
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BGE L24
MOV x0, #0
STR x0, [SP, #-8]!
B L25
L24:
MOV x0, #1
STR x0, [SP, #-8]!
L25:
LDR x0, [SP], #8
// If-else statement
CBZ x0, L26
// Block statement
// Print statement
// Visiting expression
// String constant: Num is more than 10.
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
// Pushing char 109 to heap - m
MOV w0, #109
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
// Pushing char 104 to heap - h
MOV w0, #104
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
// If statement
// Relational operation
MOV x0, #0
ADD x0, sp, x0
LDR x0, [x0, #0]
STR x0, [SP, #-8]!
// Constant: 15
MOV x0, #15
STR x0, [SP, #-8]!
// Popping operands
LDR x0, [SP], #8
LDR x1, [SP], #8
CMP x1, x0
BGT L28
MOV x0, #0
STR x0, [SP, #-8]!
B L29
L28:
MOV x0, #1
STR x0, [SP, #-8]!
L29:
LDR x0, [SP], #8
// If statement
CBZ x0, L30
// Block statement
// Print statement
// Visiting expression
// String constant: Num is also more than 15.
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
// Pushing char 109 to heap - m
MOV w0, #109
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
// Pushing char 109 to heap - m
MOV w0, #109
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
// Pushing char 104 to heap - h
MOV w0, #104
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
L30:
B L27
L26:
// Block statement
// Print statement
// Visiting expression
// String constant: Num is less than 10.
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
// Pushing char 109 to heap - m
MOV w0, #109
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
// Pushing char 116 to heap - t
MOV w0, #116
STRB w0, [x10]
MOV x0, #1
ADD x10, x10, x0
// Pushing char 104 to heap - h
MOV w0, #104
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
L27:
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