DATA SEGMENT
    MemoryArray DW 10 DUP(0)  
    Result DW 0, 0          
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA      
    MOV DS, AX          

    MOV CX, 10          
    XOR AX, AX         
    LEA SI, MemoryArray  

SumLoop:
    ADD AX, [SI]       
    ADD SI, 2         
    LOOP SumLoop         

    MOV [Result], AX     

    MOV AH, 4CH          
    INT 21H             
CODE ENDS
END START
