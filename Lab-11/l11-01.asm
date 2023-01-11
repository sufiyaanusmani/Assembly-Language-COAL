INCLUDE Irvine32.inc
.data
str1 byte "'127aj~3#^b",0
count dword LENGTHOF str1
msg1 byte "accorded at position:",0 
position dword ?

.code
main proc
    push count
    push OFFSET str1
    call scanstr
    mov position,eax
    mov eax,count
    mov ebx,position
    sub eax,ebx
    dec eax
    mov position,eax
    mov edx,OFFSET msg1
    call Writestring
    call crlf
    mov eax,position
    call writedec
    call crlf
    exit
main endp

scanstr proc
    push ebp
    mov ebp,esp
    pushad
    mov edi,[ebp+8]
    mov al,'#'
    mov ecx,[ebp+12]
    cld
    repne scasb
    jnz exitt
    dec edi
    mov[ebp+12], ecx

    exitt:
    popad
    mov eax,[ebp+12]
    pop ebp
    ret 8
    scanstr endp
end main
