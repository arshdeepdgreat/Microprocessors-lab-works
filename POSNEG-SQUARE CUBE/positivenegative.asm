;19BCB0086
              
org 100h
.model small              
.data
    NUM DB 0F4H 
    msg1 db 10,13,'Enter number: $'
    MES1 DB 10,13,'DATA IS POSITIVE $'
    MES2 DB 10,13,'DATA IS NEGATIVE $'
.code
main proc
        MOV AX,@data
        MOV DS,AX
        
        MOV DX,OFFSET msg1
        mov ah,9 
        int 21h
        
        mov ah,1
        int 21h
               
        mov bl,al
        mov cl,30h 
        
        cmp bl,cl   
        
        jg positive
        jl negative
        
        positive:
        lea dx,MES1
        mov ah,9
        int 21h
        mov ah,4ch
        int 21h   
        
        negative:
        lea dx,MES2
        mov ah,9
        int 21h
        mov ah,4ch
        int 21h 
                
main endp
ret    