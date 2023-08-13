.model small
.stack 100h
.code   

;only print 2nd and 3rd letter

;during input int21h should be between
mov ah, 1    ;1st input
int 21h   

mov ah, 1    ;2nd input
int 21h 
mov bl, al   ;printing only 2nd input

mov ah, 1    ;3rd input
int 21h
mov cl, al 

mov ah, 2
mov dl, 010
int 21h
mov dl, 0dh
int 21h 
                  
;during output int21h should be at end
mov ah, 2
mov dl, bl
int 21h  

mov ah, 2
mov dl, cl
int 21h


mov ah, 4ch
int 21h