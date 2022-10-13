; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 3

INCLUDE Irvine32.inc

.data
    val1 SDWORD 8000h

.code
    main PROC
        mov eax, val1
        add eax, 1000h
        call DumpRegs
        exit
    main ENDP
    END main