.model small
.stack 100h
.data
.code

    mov ah, 1   ;take single key input
    int 21h     ;do it
    ;cant show output directly from ah. move to different reg
    mov bl, al  ;moving data from lower reg to another lower reg
    
    mov ah, 2   ;output single key
    mov dl, bl  ;moving ah to dl else wont work
    int 21h     ;do it
    
exit:
    mov ah, 4ch
    int 21h