; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 2

INCLUDE Irvine32.inc

.data
    val3 SDWORD -2147483648

.code
    main PROC
        mov eax, val3

        call DumpRegs
        exit
    main ENDP
    END main