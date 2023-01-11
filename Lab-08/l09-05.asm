; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 5

INCLUDE Irvine32.inc

.data
	col DWORD ?
	msg1 BYTE "Enter number of columns: ", 0

.code
    main PROC
		mov edx, OFFSET msg1
		call ReadDec
		mov ecx, eax
		mov ebx, 1
		mov al, "A"
		L1:
			PUSH ecx
			mov ecx, ebx
			L2:
				call WriteChar
				inc al
			LOOP L2
			call Crlf
			inc ebx
			POP ecx
		LOOP L1
        exit
    main ENDP
    END main