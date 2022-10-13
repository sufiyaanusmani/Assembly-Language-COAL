; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 5

INCLUDE Irvine32.inc

.code
    main PROC
        mov ax, 7FF0h
        add al, 10h
        add ah, 1
        add ax, 2
        call DumpRegs
        exit
    main ENDP
    END main