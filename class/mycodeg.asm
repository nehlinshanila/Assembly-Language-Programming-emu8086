;  Declare an array of size 10 without any initial data. 
;Prompt the user to enter a
;line of text and store it into the array.
 
 
.model small
.stack 100h
.data
.code
    
    mov ah, 1
    mov cx, 10 
    
    input:
    int 21h
    
    cmp al,  0dh
    je exit  ;if input==1 go to exit else next line
    
    dec cx  ;keep decrementing until cx ==0
    jnz input   ;input=! 0 end loop
    
    exit: 
    mov ah, 4ch
    int 21h
    