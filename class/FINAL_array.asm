.model small
.stack 100h
.data 
    array1 db 5 dup (?), '$'
    array2 db 5 dup (?), '$' 
.code
    mov ax, @data
    mov ds, ax
    
    lea si, array1
    lea di, array2
    
    mov ah, 1
    
    int 21h
    mov [si], al
    mov bl, [si]
    mov [di], bl
    
    inc si
    inc di 
    
    int 21h
    mov [si], al
    mov bl, [si]
    mov [di], bl
    
    inc si
    inc di 
    
     int 21h
    mov [si], al
    mov bl, [si]
    mov [di], bl
    
    inc si
    inc di
    
     int 21h
    mov [si], al
    mov bl, [si]
    mov [di], bl
    
    inc si
    inc di
    
     int 21h
    mov [si], al
    mov bl, [si]
    mov [di], bl
    
    mov ah, 2   
    
    ;newline
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    
    lea dx, array2
    mov ah, 9
    int 21h
    
  mov ah, 4ch
  int 21h