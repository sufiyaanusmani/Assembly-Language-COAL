; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 2

; 30 - 9 + 186 - 150

INCLUDE Irvine32.inc

.code
	main PROC
		mov eax, 30
		sub eax, 9
		add eax, 186
		sub eax, 150

		call DumpRegs
		exit
	main ENDP
	END main