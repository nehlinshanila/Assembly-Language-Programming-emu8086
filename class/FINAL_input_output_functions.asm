.model small
.stack 100h
.data
.code    

mov ah, 1   ;take input

int 21h     ;1st input
mov bl, al   ;put in bl

int 21h      ;2nd input
mov cl, al   ;put in cl

int 21h       ;3rd input
mov bh, al    ;put in bh

mov ah, 2     ;output

mov dl, 32   ;space
int 21h

mov dl, bh ;3rd
int 21h 

mov dl, cl   ;2nd
int 21h  

mov dl, bl    ;1st
int 21h 

mov ah, 4ch    ;end
int 21h