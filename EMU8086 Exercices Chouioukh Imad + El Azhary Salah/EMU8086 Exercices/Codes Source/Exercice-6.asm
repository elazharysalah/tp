DATA SEGMENT
    Num1 DB -5           
    Num2 DB 4            
    Result DW 0          
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA        
    MOV DS, AX          

    MOV AL, [Num1]      
    MOV BL, [Num2]       
    IMUL BL             

    MOV [Result], AX     

    MOV AH, 4CH          
    INT 21H             
CODE ENDS
END START
