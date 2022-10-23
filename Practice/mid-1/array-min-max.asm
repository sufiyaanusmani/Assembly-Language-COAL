INCLUDE Irvine32.inc

.data
    array DWORD 30, 50, 29
    max DWORD ?
    min DWORD ?

.code
    main PROC
        mov eax, array
        mov max, eax
        mov min, eax
        mov esi, 1
        L1:
            cmp esi, LENGTHOF array
            jge L2
            mov eax, max
            cmp array[esi*TYPE array], eax
            jle L3
            mov eax, array[esi*TYPE array]
            mov max, eax
            L3:
            mov eax, min
            cmp array[esi *TYPE array], eax
            jge L4
            mov eax, array[esi *TYPE array]
            mov min, eax
            L4:


            inc esi
            jmp L1
        L2:
        mov eax, max
        call WriteDec
        call Crlf
        mov eax, min
        call WriteDec
        call Crlf
        exit
    main ENDP
    END main
