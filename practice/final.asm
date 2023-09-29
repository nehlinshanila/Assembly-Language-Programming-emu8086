.model small
.stack 100h
.data 
    _YES db 'this is: ', '$' 
    _NO db 'this is not: ', '$'
.code
    mov ax, @data
    mov ds, ax

    mov CL, 0        ;initiating cx value with 0, loop er starting index
    mov BH, 41h      ;moving 41h (A) inside bl reg
    MOV BL, 2

    LETTERS:               ;label
        CMP CL, 26
        JE EXIT

        XOR AH, AH
        MOV AL, CL 
        DIV BL             ;DIVIDE AL BY BL

        CMP AH, 0
        JE PRINT_YES
        JNE PRINT_NO

        JMP EXIT

    PRINT_YES:

        LEA DX, _YES
        MOV AH, 9
        INT 21H

        MOV AH, 2
        ;MOV DL, 'O'
        ;INT 21H
        MOV DL, BH
        INT 21H


        MOV DL, 0AH
        INT 21H
        MOV DL, 0DH
        INT 21H

        INC CL
        INC BH

        JMP LETTERS
    PRINT_NO:

        LEA DX, _no
        MOV AH, 9
        INT 21H

        MOV AH, 2
        ;MOV DL, 'E'
        ;INT 21H
        MOV DL, BH
        INT 21H

        MOV DL, 0AH
        INT 21H
        MOV DL, 0DH
        INT 21H

        INC CL
        INC BH

        JMP LETTERS

    EXIT:
        mov ah, 4ch
        int 21h