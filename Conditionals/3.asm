; checking whether number is even or odd

INCLUDE Irvine32.inc

.data
    num = 16
    even1 BYTE "Even", 0
    odd BYTE "Odd", 0
.code
    main PROC
        mov al, num MOD 2
        cmp al, 0
        jne L1
        mov edx, OFFSET even1
        jmp end1
        L1: mov edx, OFFSET odd
        end1:
        call WriteString
        call Crlf
        exit
    main ENDP
    END main
