; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 4

INCLUDE Irvine32.inc

.data
    color BYTE "black",0
    varA WORD 12
    varB WORD 2
    varC WORD 13
    varD WORD 8
    varE WORD 14
.code
    main PROC

        call DumpRegs
        exit
    main ENDP
    END main