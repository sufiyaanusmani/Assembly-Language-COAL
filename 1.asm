INCLUDE Irvine32.inc
; Sufiyaan Usmani
; 21K-3195
; BCS-3J

.code
	main PROC
		mov eax, 10h
		mov ebx, 25h
		call DumpRegs
		exit
	main ENDP
	END main