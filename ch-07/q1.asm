INCLUDE Irvine32.inc

DECIMAL_OFFSET = 5
.data
	arr BYTE "100123456789765"
	temp DWORD ?
	count DWORD 0
.code
	main PROC
		mov edx, OFFSET arr
		mov ecx, LENGTHOF arr
		mov ebx, DECIMAL_OFFSET
		call WriteScaled
		call Crlf
		exit
	main ENDP

	WriteScaled PROC
		mov temp, ecx
		L1:
			mov eax, temp
			sub eax, ebx
			cmp eax, count
			jnz lol
			mov al, "."
			call WriteChar
			lol:
			movzx eax, BYTE PTR [edx]
			call WriteChar
			inc edx
			inc count
		LOOP L1
		ret
	WriteScaled ENDP
	END main
