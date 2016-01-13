// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

(START)
    @SCREEN
    D=A    //  D=SCREEN
    @i
    M=D    //  i=SCREEN
    @24576
    D=M    //  D=RAM[24576] Sets D == keyboard ascii code
    @FILL
    D;JNE  //  Fill screen if RAM[24576](the keyboard memory) != 0
    @CLEAR
    D;JEQ  //  Clear more screen if RAM[24576](the keyboard memory) == 0
(FILL)
    @i
    A=M    //  Set A=i
    M=-1   //  Set RAM[i]==-1
    @i
    M=M+1  //  Increment i
    @24576
    D=M    //  D=RAM[24576] Sets D == keyboard ascii code
    @FILL
    D;JNE  //  Fill more screen if RAM[24576](the keyboard memory) != 0
    @START
    D;JEQ  //  Go to beginning of screen if no keyboard button is being pressed
(CLEAR)
    @i
    A=M    //  Set A=i
    M=0    //  Set RAM[i]==0
    @i
    M=M+1  //  Increment i
    @24576
    D=M    //  D=RAM[24576] Sets D == keyboard ascii code
    @CLEAR
    D;JEQ  //  Clear more screen if RAM[24576](the keyboard memory) == 0
    @START
    D;JNE  //  Go to beginning of screen if keyboard button is being pressed
    
    

    
