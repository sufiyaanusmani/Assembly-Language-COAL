INCLUDE Irvine32.inc

.data
    a1 BYTE 6, 1, 6, 3, 9, 6, 7
    size1 = LENGTHOF a1
.code
    main PROC
        mov ebx, 0
        outer:
            cmp ebx, size1
            jge outerEnd
            mov ecx, 0
            inner:
                mov eax, size1
                dec eax
                sub eax, ebx
                cmp ecx, eax
                jge innerEnd
                mov al, a1[ecx + 1]
                cmp a1[ecx], al
                jle ifEnd
                mov dl, a1[ecx]
                xchg dl, a1[ecx + 1]
                mov a1[ecx], dl
                ifEnd:
                inc ecx
                jmp inner
            innerEnd:
            inc ebx
            jmp outer
        outerEnd:

        mov ecx, size1
        mov esi, OFFSET a1
        L1:
            movzx eax, BYTE PTR [esi]
            call WriteDec
            call Crlf
            inc esi
        LOOP L1
        exit
    main ENDP
    END main
