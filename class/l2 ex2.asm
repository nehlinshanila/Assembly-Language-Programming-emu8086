;Take 3 single-key inputs and display the second input taken using the output function in a separate line.
.model small
.stack 100h
.data
.code
    mov ah, 1        ;single key input
    
    int 21h       ;int 21h for 1st input
    mov bl, al        ;mov al to different reg
    int 21h        ;int 21h for 2nd input
    mov cl, al         ;mov al to different reg
    int 21h        ;int 21h for 3rd input
    mov bh, al          ;mov al to different reg

    
    mov ah, 2          ;single key output                
           
   ;new line starts
   mov dl, 0ah           ;dl here because everything related to output to use dl
   int 21h
   mov dl, 0dh
   int 21h
   ;new line ends 
    
    ;mov dl, bl        ;same procedure
    ;int 21h
    mov dl, cl
    int 21h
    ;mov dl, bh
    ;int 21h
    
exit:
    mov ah, 4ch
    int 21h
    