; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 6

INCLUDE Irvine32.inc

.data
	msg1 BYTE "Enter a number: ", 0
	msg2 BYTE "Sum: ", 0
	sum DWORD 0
	
.code
    main PROC
		mov edx, OFFSET msg1
		call WriteString
		call ReadDec
		mov ecx, eax
		call CalculateSum
		mov sum, ebx
		mov edx, OFFSET msg2
		call WriteString
		mov eax, sum
		call WriteDec
		call Crlf
        exit
    main ENDP

	CalculateSum PROC USES ecx
		mov ebx, 0
		L1:
			add ebx, ecx
		LOOP L1
		ret
	CalculateSum ENDP
    END main