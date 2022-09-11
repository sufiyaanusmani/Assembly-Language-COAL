; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 8

; ebx = 5ADh – eax + 65d + 73o – 11100101b + 7Bh

INCLUDE Irvine32.inc

.code
	main PROC
		mov ebx, 05ADh
		mov eax, 5d			; random value
		sub ebx, eax
		add ebx, 65d
		add ebx, 73o
		sub ebx, 11100101b
		add ebx, 07Bh

		call DumpRegs
		exit
	main ENDP
	END main