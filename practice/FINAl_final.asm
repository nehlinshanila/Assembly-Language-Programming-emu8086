;Take a user input; 
;if the input is character 1 or 3 or 5 display ‘O’. 
;If it is 2 or 4, display “E”. 
;If it is anything else, do nothing.  

.model small
.stack 100h
.data
.code

mov ah, 1
mov cx, 10
int 21h

cmp al, '1'  
je print_o 
cmp al, '3' 
je print_o
cmp al, '5'
je print_o 

cmp al, '2'
je print_e
cmp al, '4'
je print_e    

jmp exit

print_o:
mov ah, 2
mov dl, 'o'
int 21h    

jmp exit

print_e:
mov ah, 2
mov dl, 'e'
int 21h

exit:
mov ah, 4ch
int 21h
