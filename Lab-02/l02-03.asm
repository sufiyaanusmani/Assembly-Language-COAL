; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 3

; 101110b + 50Ah + 6710d + 1010001b + F

INCLUDE Irvine32.inc

.code
	main PROC
		mov eax, 101110b
		add eax, 50Ah
		add eax, 6710d
		add eax, 1010001b
		add eax, 0Fh

		call DumpRegs
		exit
	main ENDP
	END main