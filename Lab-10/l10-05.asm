; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 5

INCLUDE IRVINE32.INC
.data
message byte "Enter the integer you want the factorial of: ",0
message2 byte "The factorial is: ",0
var dword  ?
.code
main proc
    mov edx,offset message
    call writestring
    mov eax,0
    call readdec
    mov var,eax
    mov ebx,0
    mov ebx,eax
    dec ebx
    call fact
    mov edx,offset message2
    call writestring
    call writedec
    call dumpregs
    exit
main endp

fact proc
    enter 0,0
    cmp eax,0
    je h1
    cmp ebx,0
    je here
    mul ebx
    dec ebx
    call fact
    jmp here
    h1:
    mov eax,1
    here:
    leave
    ret 
fact endp
end main