INCLUDE Irvine32.inc

.data
    msg1 BYTE "Enter a number: ", 0
    msg2 BYTE "Factorial: ", 0
.code
    main PROC
        mov edx, OFFSET msg1
        call WriteString
        call ReadDec
        PUSH eax
        mov eax, 1
        call Factorial
        mov edx, OFFSET msg2
        call WriteString
        call WriteDec
        call Crlf
        exit
    main ENDP

    Factorial PROC
        PUSH ebp
        mov ebp, esp
        mov eax, [ebp + 8]
        cmp eax, 0
        jnz L1
        mov eax, 1
        jmp L2
        L1:
            dec eax
            PUSH eax
            call Factorial

        ReturnFactorial:
            mov ebx, [ebp + 8]
            mul ebx

        L2:
            POP ebp
            ret 4
    Factorial ENDP
    END main