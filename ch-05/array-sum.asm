INCLUDE Irvine32.inc

.data
	arr DWORD 5 DUP(?)
	sum DWORD 0
	msg BYTE "Enter a number: ",0
.code
	main PROC
		mov ecx, LENGTHOF arr
		mov esi, OFFSET arr
		call InputArray
		call CalculateSum
		call WriteDec
		call Crlf
		exit
	main ENDP

	InputArray PROC USES esi ecx
		mov edx, OFFSET msg
		L1:
			call WriteString
			call ReadInt
			mov [esi], eax
			add esi, TYPE DWORD
		LOOP L1
		ret
	InputArray ENDP

	CalculateSum PROC
		mov eax, 0
		L2:
			add eax, [esi]
			add esi, TYPE DWORD
		LOOP L2
		ret
	CalculateSum ENDP

	END main
