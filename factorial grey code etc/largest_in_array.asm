.model small
.stack 100h
.data
array db 2,6,8,7
result db ?

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,4
    mov bl,0
    lea SI,array
    l1:
    mov al,[si]
    cmp al,bl
    JL l2:
    mov bl,al
    l2:
    inc si
    dec cx
    JNZ l1
    
    mov result,bl
    mov dl ,result
    
    add dl,48
    mov ah,2
    int 21h  
    
    mov ah,4ch
    int 21h
    
main endp
end main