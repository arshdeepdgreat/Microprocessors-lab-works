.model small
.stack 100h
.code
main proc
    mov AX,7h   ;MOVE 7 TO AX AS WE ARE FINDING 7!
    mov cx,ax    ;COPY AX TO COUNTER
    dec cx          ;DECREASE COUNTER BY 1 SO THAT MULTIPLICATION CAN BE DONE
    fact:	           ;LOOP LABEL
    mul cx          ;MULTIPLY WITH AX AND 
    dec cx          ;DECREASE CX 
    JNZ fact       ;STOP WHEN CX=0
main endp
end main
