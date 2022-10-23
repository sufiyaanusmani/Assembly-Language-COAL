; *
; * *
; * * *
; * * * *
; * * * * *

INCLUDE Irvine32.inc

.data
	row DWORD 5
	temp DWORD ?
.code
	main PROC
		mov al, "*"
		mov ecx, row
		mov ebx, 1
		outer:
			mov temp, ecx
			mov ecx, ebx
			inner:
				call WriteChar
			LOOP inner
			call Crlf
			inc ebx
			mov ecx, temp
		LOOP outer
		exit
	main ENDP
	END main
