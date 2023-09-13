;define byte variable initital value 65h and string "Hello"
.model small
.stack 100h
.data
      v1 db 65h
      s db "hello!$"
.code         
    mov ax, @data
    mov ds, ax  ;to let system know that we start
    
    mov ah, 2  ;output
    mov dl, v1 ;display variable   
    int 21h ; do it
    
    ;mov dl, 20h ; put space after
    ;int 21h  
    
    ;lea dx, s   ;load address of operand
    ;mov ah, 9    ;char string output
    ;int 21h
    
    mov ah, 4ch
    int 21h ;end