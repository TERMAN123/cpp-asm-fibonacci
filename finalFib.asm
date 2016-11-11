; lab #6 - fibonacci code
; author: Nick Kasten

        bits    64
        global  n_fibonacci

        section .text

n_fibonacci:
	push	rbx
check_for_zero:
	mov 	rax, 0	    
	cmp	rdi, 0	    
	jz	f_exit
check_for_one:
        mov     rax, 1      
	cmp	rdi, 1	   
	je	f_exit	  
gen_case:
	; first recursive call (to get f(n-1))
	dec	rdi
	push	rdi
	call	n_fibonacci 
	mov	rbx, rax 

	; second recursive call (to get f(n-2))
	pop 	rdi	
	dec	rdi
	call	n_fibonacci
	
	; adding f(n-2) to f(n-1)
	add	rax, rbx
f_exit:     
	pop	rbx
        ret
