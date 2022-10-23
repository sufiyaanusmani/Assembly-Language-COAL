; sum of first n numbers

INCLUDE Irvine32.inc

.data
    n BYTE 10
    sum BYTE 0
.code
    main PROC
        movzx ecx, n
        L1:
            add sum, cl
        LOOP L1
        movzx eax, sum
        call WriteDec
        call Crlf
        exit
    main ENDP
    END main
