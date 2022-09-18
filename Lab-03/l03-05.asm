; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 5

INCLUDE Irvine32.inc

.data
    varA BYTE 10h
    varB BYTE 15h
    varC BYTE 20h
    varD BYTE 30h

.code
    main PROC
        mov eax, 0
        mov edx, 0
        mov al, varA
        mov ah, varB
		add al, ah
		mov dl, al
		mov al, varA
		sub al, ah
		sub dl, al
		add dl, varC
		add dl, varD

        call DumpRegs
        exit
    main ENDP
    END main