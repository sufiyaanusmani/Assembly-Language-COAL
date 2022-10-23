INCLUDE Irvine32.inc

.data
    array BYTE 1, 2, 3, 4
    temp BYTE ?
.code
    main PROC
        mov eax, 0
        mov al, array[(LENGTHOF array) - 1]
        mov temp, al

        mov ecx, LENGTHOF array - 1
        L1:
            mov al, array[ecx - 1]
            mov array[ecx], al
        LOOP L1
        mov al, temp
        mov array[0], al

        mov ecx, LENGTHOF array
        mov esi, OFFSET array
        L2:
            movzx eax, BYTE PTR [esi]
            call WriteDec
            call Crlf
            inc esi
        LOOP L2
        exit
    main ENDP
    END main
