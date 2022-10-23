INCLUDE Irvine32.inc

.data
    source DWORD 20, 30, 50, 10, 40
    target DWORD LENGTHOF source DUP(?)
.code
    main PROC
        mov esi, 0
        mov ecx, LENGTHOF source
        L1:
            mov eax, source[esi * TYPE source]
            mov target[esi * TYPE target], eax
            inc esi
        LOOP L1

        mov ecx, LENGTHOF target
        mov esi, OFFSET target
        L2:
            mov eax, [esi]
            call WriteDec
            call Crlf
            add esi, TYPE target
        LOOP L2
        exit
    main ENDP
    END main
