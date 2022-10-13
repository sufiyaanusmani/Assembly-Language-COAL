; Sufiyaan Usmani
; add two variables

INCLUDE Irvine32.inc

.data
	a BYTE 10h
	b BYTE 20h

.code
	main PROC
		mov eax, 0
		mov al, a
		add al, b

		call DumpRegs
		exit
	main ENDP
	END main
