; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 1

INCLUDE Irvine32.inc

.data
    bMinutes BYTE ?
.code
    main PROC
		mov eax, 0
        mov eax, 10
        mov ebx, eax
        shl eax, 4
        add eax, ebx
        shl ebx, 2
        add eax, ebx
		call WriteDec
		call Crlf
        exit
    main ENDP
    END main