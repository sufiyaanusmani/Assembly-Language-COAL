INCLUDE Irvine32.inc

.data
    msg1 BYTE "Enter a number: ", 0
    msg2 BYTE "Sum: ", 0
.code
    main PROC
        mov edx, OFFSET msg1
        call WriteString
        call ReadDec
        mov ecx, eax
        mov eax, 0
        call CalculateSum
        mov edx, OFFSET msg2
        call WriteString
        call WriteDec
        call Crlf
        exit
    main ENDP

    CalculateSum PROC
        cmp ecx, 0
        jz L1
        add eax, ecx
        dec ecx
        call CalculateSum
        L1:
        ret
    CalculateSum ENDP
    END main