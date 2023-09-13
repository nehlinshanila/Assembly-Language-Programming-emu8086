;mov smaller value to larger value

.model small
.data

    var1 db 1
    
.code

main proc
    
    mov ax, 0    ;to make entire whole reg as 0
    mov al, var1 ;then add 1 to ax to make whole reg 1
    
endp
end main