; Sufiyaan Usmani
; 21K-3195
; BCS-3J
; Task 4

INCLUDE IRVINE32.INC
.data
    message byte "Enter an integer: ",0
    message2 byte "The square of that number is: ",0
.code
main proc
    call LocalSquare
    call dumpregs
    exit
main endp 

LocalSquare PROC
    Enter 1,0
    mov eax,0
    mov edx,offset message
    call writestring
    call readint
    mov [ebp-4],eax
    mov edx,offset message2
    call writestring
    mul eax
    call writedec
    leave
    ret 
LocalSquare endp
end main