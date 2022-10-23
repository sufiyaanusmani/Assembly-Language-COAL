INCLUDE Irvine32.inc

.data
    source DWORD 20, 30, 50, 10, 40
    target DWORD LENGTHOF source DUP(?)
.code
    main PROC
        mov ecx, LENGTHOF source
        mov esi, OFFSET source
        add esi, (LENGTHOF source) * (TYPE source)
        sub esi, TYPE source
        mov edi, OFFSET target
        L1:
            mov eax, [esi]
            mov [edi], eax
            sub esi, TYPE source
            add edi, TYPE target
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
