data segment
    block1 db 'ARSHDEEP'
    msg1 db "it is palindrome $"
    msg2 db "it is not a palindrome $"
    pal db 00h
data ends

print macro msg
    mov ah,09h
    lea dx,msg
    int 21h
    int 3h
    
    
endm
extra segment
    block2 db 9 dup(?)
extra ends

code segment
    assume cs:code,ds:data,es:extra
    start:mov ax,data
    mov ds,ax
    mov ax,extra
    mov es,ax
    lea si,block1
    lea di,block2+8
    mov cx,00009h  
    back:cld
    lodsb
    std
    stosb
    loop back
    lea si,block1
    lea di,block2
    mov cx,00009h
    cld
    repz cmpsb
    jnz skip
    lea dx,msg1
    
    mov ah,09h
    int 21h
    mov ax,4ch
    int 21h
    skip:lea dx,msg2
    
    mov ah,09h
    int 21h
    mov ah,4ch
    int 21h
    
    code ends
end start



