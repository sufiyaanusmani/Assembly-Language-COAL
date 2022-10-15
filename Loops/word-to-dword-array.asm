; moving word array to dword array
INCLUDE Irvine32.inc

.data
    source WORD 10, 20, 30, 40
    destination DWORD LENGTHOF source DUP(?)
.code
    main PROC
        mov ecx, LENGTHOF source
        mov esi, 0
        mov eax, 0
        L1:
            movzx eax, source[esi * TYPE source]
            mov destination[esi * TYPE destination], eax
            inc esi
        LOOP L1

        mov ecx, LENGTHOF destination
        mov esi, OFFSET destination
        L2:
            mov eax, [esi]
            call WriteDec
            add esi, TYPE destination
            call Crlf
        LOOP L2
        exit
    main ENDP
    END main
