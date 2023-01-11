; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 3

INCLUDE irvine32.inc
.data
	array1 word 1,1,1,1,1
	array2 word 2,2,2,2,2
	sum1 word ?
	sum2 word ?
	sum3 word ?
	m1 byte "Sum of array1: ",0
	m2 byte "Sum of array 2: ",0
	m3 byte "Total sum: ",0

.code
main PROC
	call sumofarr1
	mov edx,offset m1
	call writestring
	mov eax,0
	mov ax,sum1
	call writedec
	call crlf
	mov edx,offset m2
	call writestring
	mov ax,sum2
	call writedec
	call crlf
	mov edx,offset m3
	call writestring
	mov ax,sum3
	call writedec
	call crlf
	call DumpRegs
exit
main endp

sumofarr1 proc
	mov ecx, 5
	mov esi,0
	mov ax,0
	mov bx,0
	mov dx,0
	l1:
	mov ax,sum1
	add ax,array1[esi]
	mov sum1,ax
	call sumofarr2
	add esi,2
	loop l1
	call total
	ret
sumofarr1 endp

sumofarr2 proc
	mov bx,sum2
	add bx,array2[esi]
	mov sum2,bx
	ret
sumofarr2 endp

total proc
	mov dx,sum1
	add dx,sum2
	mov sum3,dx
	ret
	total endp
end main
