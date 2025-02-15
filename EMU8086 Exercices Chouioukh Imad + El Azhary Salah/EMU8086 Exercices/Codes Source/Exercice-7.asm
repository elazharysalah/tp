DATA SEGMENT
    Array DB 20 DUP(0)  
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA         
    MOV DS, AX          

    MOV CX, 19           
SortOuterLoop:
    LEA SI, Array        
    MOV DX, CX         

SortInnerLoop:
    MOV AL, [SI]         
    CMP AL, [SI+1]    
    JLE NoSwap          

    XCHG AL, [SI+1]     
    MOV [SI], AL        

NoSwap:
    INC SI               
    DEC DX             
    JNZ SortInnerLoop    

    DEC CX               
    JNZ SortOuterLoop   

    MOV AH, 4CH          
    INT 21H              
CODE ENDS
END START
