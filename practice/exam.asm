INCLUDE 'EMU8086.INC'
.model small
.stack 100h
.data
    
    array db 10 dup(?) , '$'
    newl db 0ah, 0dh
.code 
    mov ax, @data
    mov ds, ax
                 
    mov cx, 10
    lea si, array
    mov ah, 1
    
    _array:
        int 21h 
        mov [si], al
        inc si
    loop _array
     
    mov ah, 2
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    lea dx, array ;dx for output
    mov ah, 9
    int 21h
        
    mov ah, 4ch
    int 21h
    
    ;define macro 
    
    
    
    
end 
