_Z3fibi:
.LFB972:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 24
	mov	DWORD PTR [rbp-20], edi
	cmp	DWORD PTR [rbp-20], 0
	jg	.L4
	mov	eax, 0
	jmp	.L5
.L4:
	cmp	DWORD PTR [rbp-20], 1
	jne	.L6
	mov	eax, 1
	jmp	.L5
.L6:
	mov	eax, DWORD PTR [rbp-20]
	sub	eax, 1
	mov	edi, eax
	call	_Z3fibi
	mov	ebx, eax
	mov	eax, DWORD PTR [rbp-20]
	sub	eax, 2
	mov	edi, eax
	call	_Z3fibi
	add	eax, ebx
.L5:
	add	rsp, 24
	pop	rbx
	pop	rbp
	ret
