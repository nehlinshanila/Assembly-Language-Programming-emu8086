;EXAMPLE



include 'emu8086.inc'
.model small
.stack 100h
.data
    msg db "this is 'print_string' pro",0
    
.code
    mov ax, @data
    mov ds, ax
    
    lea si, msg
    call print_string
    
    call pthis
    db 0ah, 0dh
    
    mov dx, 5
    call get_string
    
    call clear_screen
    
    call scan_num
    
    call pthis
    db 0ah, 0dh, 0
    
    mov ax, cx
    call print_num_uns
    
    exit:
    mov ah, 4ch
    int 21h
    
    
    ;---libraries------
    
    define_print_string
    define_pthis
    define_get_string
    define_clear_screen
    define_scan_num
    define_print_num
    define_print_num_uns
    
end
    
    