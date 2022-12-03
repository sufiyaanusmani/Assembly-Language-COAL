INCLUDE Irvine32.inc

DifferentInputs PROTO, num1:DWORD, num2:DWORD, num3:DWORD

.data
	n1 DWORD 10
	n2 DWORD 20
	n3 DWORD 40

.code
	main PROC
		mov eax, 99
		INVOKE DifferentInputs, n1, n2, n3
		call WriteDec
		call Crlf
		exit
	main ENDP

	DifferentInputs PROC USES ebx, num1:DWORD, num2:DWORD, num3:DWORD
		mov eax, 0
		mov ebx, num1
		cmp ebx, num2
		je end1
		cmp ebx, num3
		je end1
		mov ebx, num2
		cmp ebx, num3
		je end1
		mov eax, 1
		end1:
		ret
	DifferentInputs ENDP
	END main
