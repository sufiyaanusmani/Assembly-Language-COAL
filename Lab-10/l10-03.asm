; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 3

INCLUDE IRVINE32.INC

.data
    array word 24,434,3,45,23,45,67,45,78,56,54,98,5,1,65,34,232,8,565,88
    message byte "The maximum element in array is: ",0
    
.code
main proc
    push offset array
    call MaxArray
    call dumpregs
    exit
main endp 

MaxArray proc
    push ebp
    mov ebp,esp
    mov esi,[ebp+8]
    mov ecx,0
    mov ebx,0
    mov ecx,19
    mov eax,0
    mov ax,[esi]
    add esi,2
    l1:
    cmp ax,[esi]
    ja here
    mov bx,ax
    mov ax,[esi]
    mov [esi],bx
    here:
    add esi,2
    loop l1
    mov edx,offset message
    call writestring
    call writedec
    pop ebp
    ret 4
MaxArray endp
end main