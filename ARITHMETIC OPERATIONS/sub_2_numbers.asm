        ;SUBTRACTION OF 2 NUMBERS
       MOV CX,0000      ;COUNT INITIALIZED WITH 0000H 
       MOV AX,0000AH    ;LOAD FIRST NUMBER INTO AX
       MOV BX,0FFFFH    ;LOAD SECOND NUMBER INTO BX
       SUB BX,AX        ;ADD AX AND BX AND STORE TO BX
       JNC STORE        ;IF CY=0 JUMP TO STORE
       INC CX           ;INCREASE COUNT BY 1
STORE: MOV DX,BX        ;STORE AX TO MEMORY
       HLT              ;HALT
