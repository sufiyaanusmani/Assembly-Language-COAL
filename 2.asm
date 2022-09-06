TITLE My First Program (test.asm)
; Sufiyaan Usmani
; 21K-3195
; BCS-3J

INCLUDE Irvine32.INCLUDE

.code
    main PROC
        mov eax, 47h
        mov ebx, 39h
        mov ecx, 60h
        add eax, ebx
        add eax, ecx
        mov ebx, 85h
        mov ecx, 64h
        add eax, ebx
        add eax, ecx

        call DumpRegs
        exit
    main ENDP
    END main