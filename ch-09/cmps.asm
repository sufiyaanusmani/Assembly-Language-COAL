INCLUDE Irvine32.inc

.data
    num1 DWORD 1234
    num2 DWORD 5678
    msg1 BYTE "num1 is greater", 0
    msg2 BYTE "num2 is greater", 0

.code
    main PROC
        cld
        mov esi, OFFSET num1
        mov edi, OFFSET num2
        cmpsd
        ja L1
        mov edx, OFFSET msg2
        jmp printMsg
        L1:
        mov edx, OFFSET msg1
        printMsg:
        call WriteString
        call Crlf
        exit
    main ENDP
    END main