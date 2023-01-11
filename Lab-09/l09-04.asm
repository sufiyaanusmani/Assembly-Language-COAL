; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 4

INCLUDE Irvine32.inc
.data
    Stri BYTE "Now with SHRD", 0
.code
    main PROC
        mov eax, 0
        mov ebx, 0
        mov ax, 0101010101010101b
        mov bx, 1010101010101010b
        shr bx,1 
        rcr ax,1
        call WriteBin
        call Crlf
        mov edx, 0
        mov edx, OFFSET Stri
        call WriteString
        call Crlf
        mov ax, 0101010101010101b
        mov bx, 1010101010101010b
        shrd ax, bx, 1
        call WriteBin
        exit
    main ENDP
    END main