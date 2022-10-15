; display first n natural numbers

INCLUDE Irvine32.inc

.data
    n BYTE 10
.code
    main PROC
        mov eax, 1
        movzx ecx, n
        L1:
            call WriteDec
            call Crlf
            inc eax
        LOOP L1
        exit
    main ENDP
    END main
