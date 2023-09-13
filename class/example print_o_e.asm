;Example 8: Take a user input; 
;if the input is character ‘1’ display ‘O’, 
;if it is ‘2’, display “E”, 
;if it is anything else, do nothing.

.model small
.stack 100h
.data
.code
    
    ;take user input
    mov ah, 1   
    mov cx, 10 ;counter will run 10 times
    int 21h                              
    
    ;according to question
    ;if input is '1' compare al with 1
    cmp al, '1'
    je printo ;jump equals = 
              ;if(input==1), then go to printo
              ;else go to do next line
    cmp al, '2'
    je printe
    jmp exit ;and skip anything in between
    
    printo:       ;here do what requires
    mov ah, 2
    mov dl, 'o'    ;displaying o if input 1
    int 21h                                
    
    jmp exit ; exit and skip anything in betw   
    
    printe:
    mov ah, 2
    mov dl, 'e'
    int 21h
   
   exit:
   mov ah, 4ch    
   int 21h 
   

