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
    D=M    // D=i
    @1
    D=D-M  // D=i-RAM[1]
    @STORE
    D;JGT  // If (i-RAM[1])>0 goto STORE
    @0
    D=M    // D=RAM[0]
    @sum
    M=M+D  // Add RAM[0] to total sum
    @i
    M=M+1  // Increment i
    @LOOP
    0;JMP
(STORE)
    @sum
    D=M    // D=sum
    @2
    M=D    // RAM[2]=sum
(END)
    @END
    0;JMP
    
    
