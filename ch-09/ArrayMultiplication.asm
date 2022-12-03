INCLUDE Irvine32.inc

.data
    array DWORD 1, 2, 3, 4, 5, 6, 7, 8
    msg1 BYTE "Enter a number to multiply with the array: ", 0

.code
    main PROC
        mov edx, OFFSET msg1
        call WriteString
        call ReadDec
        mov ebx, eax
        mov ecx, LENGTHOF array
        mov esi, OFFSET array
        mov edi, OFFSET array
        L1:
            lodsd
            mul ebx
            stosd
        LOOP L1

        mov ecx, LENGTHOF array
        mov esi, OFFSET array
        L2:
            mov eax, [esi]
            call WriteDec
            mov al, " "
            call WriteChar
            add esi, TYPE array
        LOOP L2
        call Crlf
        exit
    main ENDP
    END main