// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
@0
D=A
@R2
M=0//把D跟sum都=0

(LOOP)
@R0
D=M
@END
D;JEQ//結束條件 R0=0
@R1
D=M
@R2
M=M+D
@R0
M=M-1//把R0當成加的次數


@LOOP
D;JGT//if R0>0 goto loop

(END)
@END
D;JEQ//if R0=0 goto end