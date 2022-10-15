; checking num1 == num2

INCLUDE Irvine32.inc

.data
    val1 BYTE 15
    val2 BYTE 16
    equal BYTE "Equal", 0
    notEqual BYTE "Not Equal", 0
.code
    main PROC
        mov al, val1
        cmp al, val2
        jne L1
        mov edx, OFFSET equal
        jmp end1
        L1:
        mov edx, OFFSET notEqual
        end1:
        call WriteString
        call Crlf
        exit
    main ENDP
    END main
