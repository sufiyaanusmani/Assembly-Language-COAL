INCLUDE Irvine32.inc

.data
    arr1 BYTE "Sufiyaan Usmani", 0
    arr2 BYTE LENGTHOF arr1 DUP(0)

.code
    main PROC
        cld                     ; clear direction flag (increment)
        mov esi, OFFSET arr1
        mov edi, OFFSET arr2
        mov ecx, LENGTHOF arr1
        rep movsb
        mov edx, OFFSET arr2
        call WriteString
        call Crlf
        exit
    main ENDP
    END main