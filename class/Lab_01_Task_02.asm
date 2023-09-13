.model small
.stack 100h
.code

mov ah,0afh ;ah=AFh
mov bh,5   ;bh=5
sub ah,bh  ;ah-bh

mov ah,4ch
int 21h