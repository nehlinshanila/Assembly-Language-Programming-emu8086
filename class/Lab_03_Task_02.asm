.model small
.stack 100h
.data
    arr1 db 5 dup(?),'$'
    arr2 db 5 dup(?),'$'
.code
    mov ax,@data
    mov ds,ax
    
    lea si,arr1
    lea di,arr2
    
    mov ah,1
    
    int 21h
    mov [si],al
    mov bl,[si]
    mov [di],bl
    
    inc si
    inc di
    int 21h
    mov [si],al
    mov bl,[si]
    mov [di],bl
    
    inc si
    inc di
    int 21h
    mov [si],al
    mov bl,[si]
    mov [di],bl
    
    inc si
    inc di
    int 21h
    mov [si],al
    mov bl,[si]
    mov [di],bl
    
    inc si
    inc di
    int 21h
    mov [si],al
    mov bl,[si]
    mov [di],bl
    
    mov ah,2
    
    mov dl,0ah
    int 21h

    mov dl,0dh
    int 21h
    
    lea dx,arr2
    mov ah,9
    int 21h
        
mov ah,4ch
int 21h    