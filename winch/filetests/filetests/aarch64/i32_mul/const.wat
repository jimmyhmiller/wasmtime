;;! target = "aarch64"

(module
    (func (result i32)
	(i32.const 10)
	(i32.const 20)
	(i32.mul)
    )
)
;;    0:	 55                   	push	rbp
;;    1:	 4889e5               	mov	rbp, rsp
;;    4:	 4883ec08             	sub	rsp, 8
;;    8:	 4c893424             	mov	qword ptr [rsp], r14
;;    c:	 b80a000000           	mov	eax, 0xa
;;   11:	 6bc014               	imul	eax, eax, 0x14
;;   14:	 4883c408             	add	rsp, 8
;;   18:	 5d                   	pop	rbp
;;   19:	 c3                   	ret	

;;    0:	 fd7bbfa9             	stp	x29, x30, [sp, #-0x10]!
;;    4:	 fd030091             	mov	x29, sp
;;    8:	 fc030091             	mov	x28, sp
;;    c:	 ff2300d1             	sub	sp, sp, #8
;;   10:	 fc030091             	mov	x28, sp
;;   14:	 890300f8             	stur	x9, [x28]
;;   18:	 500180d2             	mov	x16, #0xa
;;   1c:	 e003102a             	mov	w0, w16
;;   20:	 900280d2             	mov	x16, #0x14
;;   24:	 007c101b             	mul	w0, w0, w16
;;   28:	 ff230091             	add	sp, sp, #8
;;   2c:	 fc030091             	mov	x28, sp
;;   30:	 fd7bc1a8             	ldp	x29, x30, [sp], #0x10
;;   34:	 c0035fd6             	ret	
