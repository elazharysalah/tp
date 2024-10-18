DATA SEGMENT
    Vector1 DB 10 DUP(0) 
    Vector2 DB 10 DUP(0)  
    Result DW 10 DUP(0)  
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA         
    MOV DS, AX           

    MOV CX, 10            
    LEA SI, Vector1      
    LEA DI, Vector2       
    LEA BX, Result     

AddLoop:
    MOV AL, [SI]       
    ADD AL, [DI]         
    MOV [BX], AX          

    INC SI                
    INC DI               
    ADD BX, 2             
    LOOP AddLoop

    MOV AH, 4CH          
    INT 21H               
CODE ENDS
END START
