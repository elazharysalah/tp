DATA SEGMENT
    Array DB 20 DUP(0)  
    MinValue DB 0       
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA       
    MOV DS, AX          

    MOV CX, 20         
    LEA SI, Array     
    MOV AL, [SI]        

FindMinLoop:
    INC SI             
    CMP AL, [SI]        
    JG UpdateMin        
    LOOP FindMinLoop  
    JMP Done

UpdateMin:
    MOV AL, [SI]        

Done:
    MOV MinValue, AL   

    MOV AH, 4CH         
    INT 21H             
CODE ENDS
END START
