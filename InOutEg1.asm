.model small
.stack 100h
.code
;input output example1

mov ah, 1
int 21h
;input always stored in a-low
;so moving from al to bl for output
mov bl, al       

;newline           
mov ah, 2
mov dl, 10
int 21h  
;using only the above will give a weird space
mov dl, 0dh
int 21h   ;so by default use this for next line as always
    

mov ah, 2
;whatever output you wanna show must be stored in dl
mov dl, bl
int 21h
            


mov ah, 4ch
int 21h
