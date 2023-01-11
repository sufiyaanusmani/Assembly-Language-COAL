; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 6

INCLUDE Irvine32.inc

.data
	arr1 WORD 1, 1, 1, 1, 1
	arr2 WORD 2, 2, 2, 2, 2
    sum1 WORD 0
    sum2 WORD 0
    sum3 WORD 0
    msg1 BYTE "Sum of array 1: ", 0
    msg2 BYTE "Sum of array 2: ", 0
    msg3 BYTE "Total Sum: ", 0

.code
    main PROC
		call SumOfArray1
        mov edx, OFFSET msg1
        call WriteString
        mov eax, 0
        mov ax, sum1
        call WriteDec
        call Crlf
        mov edx, OFFSET msg2
        call WriteString
        mov ax, sum2
        call WriteDec
        call Crlf
        mov edx, OFFSET msg3
        call WriteString
        mov ax, sum3
        call WriteDec
        call Crlf
        exit
    main ENDP

    SumOfArray1 PROC
        mov ecx, LENGTHOF arr1
        mov esi, 0
        mov ax, 0
        mov bx, 0
        mov dx, 0
        L1:
            ax, sum1
            add ax, array1[esi]
            call SumOfArray2
            add esi, 2
        LOOP L1
        call total
        ret
    SumOfArray1 ENDP

    SumOfArray2 PROC
        mov bx, sum2
        add bx, arr2[esi]
        ret
    SumOfArray2 ENDP

    total PROC
        mov dx, sum1
        add dx, sum2
        mov sum3, dx
        ret
    total ENDP

    
    END main