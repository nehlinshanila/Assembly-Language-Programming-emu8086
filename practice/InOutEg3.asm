.model small
.stack 100h
.code  

;three inputs and outputs in reverse order 

;inputs
mov ah, 1
int 21h   
mov bl, al

mov ah, 1
int 21h   
mov cl, al  

mov ah, 1
int 21h   
mov bh, al 

;space
mov ah, 2
mov dl, 32
int 21h 

;outputs 
mov ah, 2
mov dl, bh
int 21h

mov ah, 2
mov dl, cl
int 21h

mov ah, 2
mov dl, bl
int 21h




mov ah, 4ch
int 21h