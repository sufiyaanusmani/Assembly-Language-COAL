INCLUDE Irvine32.inc

.data
    arr DWORD 10h, 20h, 30h, 40h, 50h
    sum DWORD 0

.code
    main PROC
        mov esi, OFFSET arr
        mov ecx, LENGTHOF arr
        call ArraySum
        mov eax, sum
        call DumpRegs
        exit
    main ENDP

    ArraySum PROC
        mov eax, 0
        push esi
        push ecx
        L1:
            add eax, [esi]
            add esi, TYPE arr
        LOOP L1
        pop ecx
        pop esi
        mov sum, eax
        ret
    ArraySum ENDP
END main
