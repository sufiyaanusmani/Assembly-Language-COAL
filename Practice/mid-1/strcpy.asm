INCLUDE Irvine32.inc

.data
    source BYTE "This is a string",0
    destination BYTE SIZEOF source DUP(?)

.code
    main PROC
        mov eax, 0
        mov ecx, LENGTHOF source
        mov esi, 0

        L1:
            mov al, source[esi]
            mov destination[esi], al
            add esi, TYPE source
        LOOP L1

        mov edx, OFFSET destination
        call WriteString
        call Crlf

        exit
    main ENDP 
    END main