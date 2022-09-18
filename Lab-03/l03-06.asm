; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 6

INCLUDE Irvine32.inc

.data
    varA BYTE 00010000b
    varB BYTE 00010101b
    varC BYTE 00100000b
    varD BYTE 00110000b

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