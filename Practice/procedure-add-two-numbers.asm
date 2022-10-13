; function to add two numbers

INCLUDE Irvine32.inc

.data
	val1 DWORD 10h
	val2 DWORD 20h
	sum DWORD ?
.code
	main PROC
		call addNumbers
		mov eax, sum
		exit
	main ENDP

	addNumbers PROC
		mov eax, val1
		add eax, val2
		mov sum, eax
		ret
	addNumbers ENDP
	END main
