.model small
.stack 100h

assume cs:code,ds:data
data segment
    result db ?
data ends
  
code segment
Start:

    mov ax,data
    mov ds,ax
    mov al,07h
    mov bl,al
    clc
    shr al,1
    xor bl,al;ans in b1  
    
    mov result,bl
    mov dl ,result
    
    add dl,48
    mov ah,2
    int 21h  
    
code ends
end start    