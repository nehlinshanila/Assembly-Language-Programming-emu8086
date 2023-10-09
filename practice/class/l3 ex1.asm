;Define a byte variable with the value 35H and print the value of the variable
.model small
.stack 100h
.data   
    variab dw 35h
.code
    ;variable_name  DB/DW   initial_value
    ;db/w   =   define byte/word          
    mov ax, @data
    mov ds, ax
    
    mov ah, 2
    mov dx, variab          ;incase of word, enter into dx instead of dl
    int 21h
    
exit:
    mov ah, 4ch
    int 21h