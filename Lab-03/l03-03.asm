; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 3

INCLUDE Irvine32.inc

.data
    arr WORD 1, 2, 3

.code
    main PROC

        call DumpRegs
        exit
    main ENDP
    END main