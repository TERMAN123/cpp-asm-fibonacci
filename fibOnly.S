_Z3fibi:
.LFB972:
	; building the stack frame
	push	rbp
	mov	rbp, rsp
	push	rbx


	sub	rsp, 24
	mov	DWORD PTR [rbp-20], edi
	cmp	DWORD PTR [rbp-20], 0	; if [rbp-20] == 0
	jg	.L4
	mov	eax, 0			; set eax to 0
	jmp	.L5			; then go to L5 (to return)
.L4:
	cmp	DWORD PTR [rbp-20], 1	; if [rbp-20] == 1
	jne	.L6			; if it equals anything else, go to L6
	mov	eax, 1			; set eax to 1
	jmp	.L5			; then go to L5 (to return)
.L6:
	mov	eax, DWORD PTR [rbp-20]	; the 'else' portion
	sub	eax, 1			; subtract 1 to get n-1
	mov	edi, eax		; edi is now n-1
	call	_Z3fibi			; recursive call
	mov	ebx, eax		; when call finished, store result in ebx
	mov	eax, DWORD PTR [rbp-20] ; get original n
	sub	eax, 2			; subtract 2 to get n-2
	mov	edi, eax		; edi is now n-2
	call	_Z3fibi			; recursive call
	add	eax, ebx		; adding the two recursive calls together
.L5:
	; undoing the stack frame
	add	rsp, 24
	pop	rbx
	pop	rbp
	ret				; return the value of the specified fib num
