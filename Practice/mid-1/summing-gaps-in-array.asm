; summing gaps in an array
INCLUDE Irvine32.inc

.data
    array BYTE 0, 2, 5, 9, 10
.code
    main PROC
        mov esi, 0
        mov eax, 0
        mov ecx, LENGTHOF array - 1
        L1:
            movzx ebx, array[esi + 1]
            movzx edx, array[esi]
            add eax, ebx
            inc esi
        LOOP L1
        call WriteDec
        call Crlf
        exit
    main ENDP
    END main
