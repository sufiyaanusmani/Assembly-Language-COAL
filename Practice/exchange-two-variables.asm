; Sufiyaan Usmani
; exchanges values of two variables

INCLUDE Irvine32.inc

.data
	a BYTE 10h
	b BYTE 20h

.code
	main PROC
		mov eax, 0
		mov ebx, 0
		mov al, a
		xchg al, b
		mov a, al

		mov al, a
		mov bl, b
		call DumpRegs
		exit
	main ENDP
	END main
