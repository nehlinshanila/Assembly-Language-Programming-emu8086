;create an array of size 3 and load the array with user input data.
.model small
.stack 100h
.data     
    array db 3 dup (?), '$'    ;array of size 3 and ? for input we dont know
    ;var2 db 'hello', '$'  ;always use $ after string

.code
    mov ax, @data
    mov ds, ax
   
   ;input
   mov ah, 1            
   
   ;lea holds the offset address of array
   lea si, array    ;holding the offset address of array inside si 
   
   int 21h
   mov [si+0], al      ;moving value of intput inside si 0 index of array
   int 21h
   mov [si+1], al      ;moving value of intput inside si 1 index of array
   int 21h
   mov [si+2], al      ;moving value of intput inside si 2 index of array    
   
   ;space starts    
   mov dl, 032
   int 21h
   ;space ends
   
   ;for printing string we MUST use LEA
   lea dx, array          ;mov array into dx using lea              
   mov ah, 9             ;moving ins 9 into ah for string OUTPUT
   int 21h
    
exit:
    mov ah, 4ch
    int 21h 