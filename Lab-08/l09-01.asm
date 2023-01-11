; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 1

INCLUDE irvine32.inc
.data
	array1 word 23,4,5,32,54,56,34,11,78,98
	array2 word 10 DUP(0)
	m1 byte "The array copied is : "

.code
	main PROC
		mov esi,0
		mov ecx,lengthof array1
		l1:
		push array1[esi]
		add esi,2
		loop l1
		mov esi,9*type array2
		mov ecx,10
		l2:
		pop array2[esi]
		sub esi,2
		loop l2
		mov ecx,10
		mov esi,0
		mov eax,0
		mov edx,offset m1
		call writestring
		call crlf
		l3:
		mov ax,array2[esi]
		call writedec
		call crlf
		add esi,2
		loop l3
		call DumpRegs
		exit
main endp
end main
