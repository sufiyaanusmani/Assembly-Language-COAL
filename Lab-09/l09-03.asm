; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 3

INCLUDE Irvine32.inc
.data
    bMinutes BYTE ?
.code
    main PROC
        mov edx, 0
        mov eax, 0
        mov dx, 0010011001101010b
        mov ax, dxs
        shr ax, 5
        and ax, 0000000000111111b
        mov bMinutes, al
        call WriteDec
        exit
    main ENDP
    END main