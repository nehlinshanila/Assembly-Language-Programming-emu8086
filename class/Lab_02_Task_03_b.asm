.model small
.stack 100h
.code

    mov ah,1
    
    int 21h
    mov bh,al
    
    int 21h
    mov bl,al
    
    int 21h
    mov ch,al
    
    
    mov ah,2
    
    mov dl,020h
    int 21h
    
    mov dl,ch
    int 21h
    
    mov dl,bl
    int 21h
    
    mov dl,bh
    int 21h
    
mov ah,4ch
int 21h