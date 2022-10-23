; copying string in reverse order
INCLUDE Irvine32.inc

.data
    source BYTE "This is the source string",0
    destination BYTE SIZEOF source DUP("#")
.code
    main PROC
        mov esi, (OFFSET source) + (LENGTHOF source * TYPE source) - 2
        mov edi, OFFSET destination
        mov ecx, (LENGTHOF source) - 1
        L1:
            mov al, [esi]
            mov [edi], al
            inc edi
            dec esi
        LOOP L1
        mov eax, 0
        mov [edi], al
        mov edx, OFFSET destination
        call WriteString
        call Crlf
        exit
    main ENDP
    END main
