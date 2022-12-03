INCLUDE Irvine32.inc

.data
    string1 BYTE 20 DUP(?)

.code
    main PROC
        cld
        mov edi, OFFSET string1
        mov al, "S"
        mov ecx, LENGTHOF string1
        rep stosb
        
        mov edx, OFFSET string1
        call WriteString
        call Crlf
        exit
    main ENDP
    END main