; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 1

INCLUDE Irvine32.inc

.data
    val1 WORD ?
    val2 SBYTE -10

.code
    main PROC
        mov eax, 0
        mov ebx, 0
        mov ax, val1
        mov bl, val2

        call DumpRegs
        exit
    main ENDP
    END main