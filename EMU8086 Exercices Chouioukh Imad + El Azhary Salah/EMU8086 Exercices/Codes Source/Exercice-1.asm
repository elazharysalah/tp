DATA SEGMENT
    Mem1 DW 1234h     
    Mem2 DW 5678h      
    Mem3 DW 9ABCh     
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA       
    MOV DS, AX         

    MOV AX, [Mem1]     
    MOV BX, [Mem2]     
    MOV CX, [Mem3]    

    

    MOV AH, 4CH       
    INT 21H            
CODE ENDS
END START
