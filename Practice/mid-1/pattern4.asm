; 1
; 12
; 123
; 1234

INCLUDE Irvine32.inc

.data
    row DWORD 4
    temp DWORD ?
.code
    main PROC
        mov eax, 0
        mov ecx, row
        mov edx, 1
        L1:
            mov temp, ecx
            mov eax, 1
            mov ecx, edx
            L2:
                call WriteDec
                inc eax
            LOOP L2
            call Crlf
            inc edx
            mov ecx, temp
        LOOP L1
        exit
    main ENDP
    END main
