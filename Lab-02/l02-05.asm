; Sufiyaan Usmani
; 21K-3195
; Task 5

; 101b - 9 + 1A4h – 567o

INCLUDE Irvine32.inc

.code
    main PROC
        mov eax, 101b
        sub eax, 9
        add eax, 01A4h
        sub eax, 567o

        call DumpRegs
        exit
    main ENDP
    END main