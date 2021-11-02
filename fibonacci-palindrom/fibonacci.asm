.model small
.stack 100h
.DATA
array db 0,1,1,2,3,5,8
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
                       
    MOV CX,7 ;0 1 1 2 3 5 8
    mov bl,0
    lea SI,array
    LABEL:       
        mov dl, ' '
        mov ah, 2
        int 21h 
           
        mov al,[si]
        mov dl,al
        add dl,48
        mov ah,2
        int 21h   
              
        inc si      
    LOOP LABEL
    END MAIN
ret
