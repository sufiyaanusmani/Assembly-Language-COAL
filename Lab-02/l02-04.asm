; Sufiyaan Usmani
; 21K-3195
; Task 4

; 10001101b – D83h + 385 + 10 + 1111101b – E + F

INCLUDE Irvine32.inc

.code
    main PROC
        mov eax, 10001101b
        sub eax, 0D83h
        add eax, 385
        add eax, 10
        add eax, 1111101b
        sub eax, 0Eh
        add eax, 0Fh

        call DumpRegs
        exit
    main ENDP
    END main