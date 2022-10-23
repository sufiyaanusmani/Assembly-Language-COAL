; 1, 4, 7, 10, 12, 16, 19, 22, ...

INCLUDE Irvine32.inc

.code
    main PROC
        mov eax, 1
        mov ecx, 50

        L1:
            call WriteInt
            add eax, 3
        LOOP L1

        call Crlf

        exit
    main ENDP 
    END main