; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 1

; 47 + 39 + 60 + 85 + 64 + 54o - 0Ah

INCLUDE Irvine32.inc

.code
	main PROC
		mov eax, 47
		add eax, 39
		add eax, 60
		add eax, 85
		add eax, 64
		add eax, 54o
		sub eax, 0Ah

		call DumpRegs
		exit
	main ENDP
	END main