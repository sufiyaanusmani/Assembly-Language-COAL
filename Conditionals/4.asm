; checking whether number is positive or negative

INCLUDE Irvine32.inc

.data
    num SBYTE -20
    msg1 BYTE "Positive", 0
    msg2 BYTE "Negative", 0
.code
    main PROC
        mov al, num
        cmp al, 0
        jl L1
        mov edx, OFFSET msg1
        jmp end1
        L1: mov edx, OFFSET msg2
        end1:
        call WriteString
        call Crlf
        exit
    main ENDP
    END main
