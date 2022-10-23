INCLUDE Irvine32.inc

.data
	num1 DWORD 10
	num2 DWORD 20
	num3 DWORD 30
.code
	main PROC
		mov eax, num1
		mov ebx, num2
		mov ecx, num3
		call calculateSum
		call WriteDec
		call Crlf
		exit
	main ENDP

	calculateSum PROC
		add eax, ebx
		add eax, ecx
		ret
	calculateSum ENDP
	END main
