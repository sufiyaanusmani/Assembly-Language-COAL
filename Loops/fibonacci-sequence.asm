INCLUDE Irvine32.inc

.data

.code
    main PROC
        mov eax, 1
        mov ebx, 0
        mov ecx, 10
        L1:
            add eax, ebx
            mov edx, eax
            mov eax, ebx
            mov ebx, edx
            call WriteDec
            call crlf
        LOOP L1
        exit
    main ENDP
    END main
