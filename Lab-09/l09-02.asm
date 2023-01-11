; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 2

INCLUDE Irvine32.inc

.data

.code
    main PROC
        mov eax, 0
        mov ax, -128
        call DumpRegs
        call Crlf
        sal eax, 16
        sar eax, 16
        call DumpRegs
        call Crlf
        exit
    main ENDP
    END main