INCLUDE Irvine32.inc

.data
	sufi BYTE "Sufiyaan Usmani",0
.code
	main PROC
		call Randomize
		mov edx, OFFSET sufi
		mov ecx, 5	
		L1:
			mov eax, 16
			call RandomRange
			call SetTextColor
			call WriteString
			call Crlf
		LOOP L1
		outerEnd:
		exit
	main ENDP
	END main