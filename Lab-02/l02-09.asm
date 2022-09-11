; Sufiyaan Usmani
; 21K-3195
; Task 9

; ecx = 110010101101b + 45h - 73o + ebx - ecx + 1

INCLUDE Irvine32.inc

.code
    main PROC
        mov ecx, 110010101101b
        add ecx, 45h
        sub ecx, 73o
        mov ebx, 7         ; random value
        add ecx, ebx
        sub ecx, ecx
        add ecx, 1
        call DumpRegs
        exit
    main ENDP
    END main