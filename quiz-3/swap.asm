INCLUDE Irvine32.inc

Swap PROTO, num1:PTR DWORD, num2:PTR DWORD

.data
	n1 DWORD 10
	n2 DWORD 20

.code
	main PROC
		INVOKE Swap, ADDR n1, ADDR n2
		mov eax, n1
		call WriteDec
		call Crlf
		mov eax, n2
		call WriteDec
		call Crlf
		exit
	main ENDP

	Swap PROC USES eax esi edi, num1:PTR DWORD, num2: PTR DWORD
		mov esi, num1
		mov edi, num2
		mov eax, [esi]
		xchg [edi], eax
		mov [esi], eax
		ret
	Swap ENDP
	END main
