.model tiny
.code
org 100h

main proc near

mov ah, 09   ;function to display a string
mov dx, offset message
int 21h          ;dos interrupt

mov ah, 4ch   ;function to terminate
mov al, 00
int 21h        ;dos interrupt

endp      ;ending program
message db "Hello World! $"  ;message must always be ended with dollar symbol

end main