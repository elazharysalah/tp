DATA SEGMENT
    Array DB 20 DUP(0) 
    MaxValue DB 0     
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

START:
    MOV AX, DATA    
    MOV DS, AX       

    MOV CX, 20          
    LEA SI, Array     
    MOV AL, [SI]        

FindMaxLoop:
    INC SI            
    CMP AL, [SI]        
    JL UpdateMax      
    LOOP FindMaxLoop   
    JMP Done

UpdateMax:
    MOV AL, [SI]     

Done:
    MOV MaxValue, AL   

    MOV AH, 4CH       
    INT 21H          
CODE ENDS
END START
