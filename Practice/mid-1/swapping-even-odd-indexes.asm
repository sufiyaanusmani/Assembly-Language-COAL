; swapping even and odd indexes
INCLUDE Irvine32.inc

.data
    array BYTE 10h, 20h, 30h, 40h, 50h, 60h
.code
    main PROC
        mov ecx, (LENGTHOF array) / 2
        mov esi, 0
        L1:
            mov al, array[esi]
            xchg al, array[esi + 1]
            mov array[esi], al
            add esi, 2
        LOOP L1

        ; printing
        mov ecx, LENGTHOF array
        mov esi, OFFSET array
        mov eax, 0
        L2:
            mov al, [esi]
            call WriteHex
            call Crlf
            inc esi
        LOOP L2
        exit
    main ENDP
    END main
