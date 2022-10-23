; multiples of a given number

INCLUDE Irvine32.inc

.data
    n BYTE 8
.code
    main PROC
        movzx ebx, n
        movzx eax, n
        mov ecx, 10
        L1:
            call WriteDec
            call Crlf
            add eax, ebx
        LOOP L1
        exit
    main ENDP
    END main
