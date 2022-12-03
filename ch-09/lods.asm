INCLUDE Irvine32.inc

.data
    string1 BYTE "Sufiyaan Usmani", 0

.code
    main PROC
        cld
        mov esi, OFFSET string1
        lodsb
        call WriteChar
        call Crlf
        mov esi, OFFSET string1 + 3
        lodsb
        call WriteChar
        call Crlf
        exit
    main ENDP
    END main