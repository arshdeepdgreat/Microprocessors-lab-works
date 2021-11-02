DATA SEGMENT
RES DB ?
COUNT DB 05H ; Initialize the counter for the no of Fibonacci No needed
DATA ENDS
CODE SEGMENT
START: MOV AX,DATA
MOV DS, AX
LEA SI, RES
MOV CL, COUNT ; Load the count value for CL for looping
MOV AX, 00H ; Default No
MOV BX, 01H ; Default No
;Fibonacci Part
L1: ADD AX ,BX
DAA ; Used to Present the value in Decimal Form
MOV [SI], AX
MOV AX, BX
MOV BX,[SI]
INC SI
LOOP L1
;MOV AH,09H
;INT 21H
EXIT:MOV AH,4CH
INT 21H
CODE ENDS
END START