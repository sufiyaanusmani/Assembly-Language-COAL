INCLUDE Irvine32.inc

.data
    array DWORD 1000h, 2000h, 3000h, 4000h, 5000h

.code
    main PROC
        mov eax, 0
        mov ecx, LENGTHOF array
        mov esi, OFFSET array

        L1:
            add eax, [esi]
            add esi, TYPE array
        LOOP L1

        call WriteDec
        exit
    main ENDP 
    END main