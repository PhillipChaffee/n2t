// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
    @i
    M=1  // i=1
    @sum
    M=0  //  sum=0
(LOOP)
    @i
    D=M  // D=i
    @1
    D=D-M
    @END
    D;JGT
    @1
    
    
