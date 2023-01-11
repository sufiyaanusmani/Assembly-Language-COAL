; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 2

INCLUDE Irvine32.inc

.data
    intArr SWORD 0, 0, 0, 0, 1, 20, 35, 12, 66, 4, 0
    msg1 BYTE "The first non zero number found is: ", 0
    msg2 BYTE "No non zero number exist in array", 0

.code
    main PROC
        mov esi, OFFSET intArr
        mov eax, 0
        mov ecx, LENGTHOF intArr
        L1:
            mov ax, [esi]
            cmp ax, 0
            jnz prompt
            add esi, TYPE intArr
        LOOP L1
        mov edx, OFFSET msg2
        call WriteString
        exit
        
        prompt:
            mov edx, OFFSET msg1
            call WriteString
            call WriteDec
            call Crlf
			call DumpRegs
        exit
    main ENDP
    END main