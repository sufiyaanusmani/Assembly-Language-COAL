; Converting Big Endian to Little Endian
INCLUDE Irvine32.inc

.data
    bigEndian BYTE 12h, 34h, 56h, 78h
    littleEndian DWORD ?
.code
    main PROC
        mov esi, (OFFSET bigEndian) + 3
        mov edi, OFFSET littleEndian
        mov ecx, LENGTHOF bigEndian
        L1:
            mov al, [esi]
            mov BYTE PTR [edi], al
            dec esi
            inc edi
        LOOP L1
        mov eax, littleEndian
        call DumpRegs
        exit
    main ENDP
    END main
