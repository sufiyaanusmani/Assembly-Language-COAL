; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 7

; eax = 5ADh – ebx + 65o + 65d – 11110111b + 150

INCLUDE Irvine32.inc

.code
	main PROC
		mov eax, 05ADh
		mov ebx, 10d		; random value
		sub eax, ebx
		add eax, 65o
		add eax, 65d
		sub eax, 11110111b
		add eax, 150

		call DumpRegs
		exit
	main ENDP
	END main