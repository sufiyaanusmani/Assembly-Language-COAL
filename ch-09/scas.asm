INCLUDE Irvine32.inc

.data
    alpha BYTE "ABCDEFG", 0

.code  
    main PROC
        cld
        mov edi, OFFSET alpha
        mov ecx, LENGTHOF alpha
        mov al, "D"
        repne scasb
        jnz not_found
        dec edi
        mov eax, edi
        sub eax, OFFSET alpha
        call WriteDec
        call Crlf
        not_found:
        exit
    main ENDP
    END main