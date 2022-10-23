INCLUDE Irvine32.inc

.data
    str1 BYTE "This is a string",0

.code
    main PROC
        mov eax, 0
        mov esi, OFFSET str1
        L1:
            mov dl, BYTE PTR [esi]
            cmp dl, 0
            je L1end
            inc eax
            inc esi
            jmp L1
        L1end:
        call WriteDec
        call Crlf
        exit
    main ENDP
    END main
