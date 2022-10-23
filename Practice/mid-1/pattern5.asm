; * * * * *
; * * * *
; * * *
; * *
; *

INCLUDE Irvine32.inc

.data
	row DWORD 5
	temp DWORD ?
.code
	main PROC
		mov al, "*"
		mov ebx, 0
		mov ecx, row
		outer:
			mov temp, ecx
			inner:
				call WriteChar
			LOOP inner
			call Crlf
			mov ecx, temp
		LOOP outer
		exit
	main ENDP
	END main
