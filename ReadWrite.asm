.model small
.data
.code


mov ah, 1h   ;code for read character(what we entered will be stored in al)
int 21h      ;dos interrupt "do it"
mov dl, al   ;moving char from al to dl

mov ah, 2h   ;code for write character(will print whatever is in dl)
int 21h      ; do it. display and listen to previous code

end