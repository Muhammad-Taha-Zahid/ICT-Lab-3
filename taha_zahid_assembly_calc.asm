section .data
    prompt db "Addition result: ", 0
    prompt2 db "Multiplication result: ", 0
    num1 db 2
    num2 db 4
    result db 0
    newline db 10, 0

section .text
    global _start

_start:
    mov al, [num1]
    add al, [num2]
    mov [result], al

    mov eax, 4
    mov ebx, 1
    mov ecx, prompt
    mov edx, 17
    int 0x80

    add byte [result], '0'
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    mov al, [num1]
    mov bl, [num2]
    mul bl
    mov [result], al

    mov eax, 4
    mov ebx, 1
    mov ecx, prompt2
    mov edx, 21
    int 0x80

    add byte [result], '0'
    mov eax, 4
    mov ebx, 1
    mov ecx, result
    mov edx, 1
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    xor ebx, ebx
    int 0x80
