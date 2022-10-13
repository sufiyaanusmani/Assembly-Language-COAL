; Sufiyaan Usmani
; accessing array without loops

INCLUDE Irvine32.inc

.data
	arrB BYTE 10h, 20h, 30h
	arrW WORD 40h, 50h, 60h

.code
	main PROC
		mov eax, 0
		mov al, [arrB]
		mov al, [arrB + 1]
		mov al, [arrB + 2]
		mov ax, [arrW]
		mov ax, [arrW + 2]
		mov ax, [arrW + 4]
		exit
	main ENDP
	END main
