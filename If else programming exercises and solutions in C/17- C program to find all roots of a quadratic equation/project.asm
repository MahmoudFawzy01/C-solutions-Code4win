	.file	"project.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "\12Enter values of a, b, c of quadratic equation (aX^2 + bX + c): \0"
.LC1:
	.ascii "%f%f%f\0"
	.align 8
.LC5:
	.ascii "Two distinct and real roots exists: %.2f and %.2f\0"
	.align 8
.LC6:
	.ascii "Two equal and real roots exists: %.2f and %.2f\0"
	.align 8
.LC7:
	.ascii "Two distinct complex roots exists: %.2f + i%.2f and %.2f - i%.2f\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$96, %rsp
	.seh_stackalloc	96
	movaps	%xmm6, -16(%rbp)
	.seh_savexmm	%xmm6, 80
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	-44(%rbp), %rcx
	leaq	-40(%rbp), %rdx
	leaq	-36(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movss	-40(%rbp), %xmm1
	movss	-40(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	-36(%rbp), %xmm2
	movss	.LC2(%rip), %xmm1
	mulss	%xmm2, %xmm1
	movss	-44(%rbp), %xmm2
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L12
	movss	-40(%rbp), %xmm1
	movss	.LC4(%rip), %xmm0
	xorps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm6
	cvtss2sd	-20(%rbp), %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	call	sqrt
	movq	%xmm0, %rax
	movq	%rax, %xmm1
	addsd	%xmm6, %xmm1
	movss	-36(%rbp), %xmm0
	addss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -24(%rbp)
	movss	-40(%rbp), %xmm1
	movss	.LC4(%rip), %xmm0
	xorps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm6
	cvtss2sd	-20(%rbp), %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	call	sqrt
	movq	%xmm0, %rax
	movq	%rax, %xmm3
	subsd	%xmm3, %xmm6
	movapd	%xmm6, %xmm1
	movss	-36(%rbp), %xmm0
	addss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -28(%rbp)
	cvtss2sd	-28(%rbp), %xmm1
	cvtss2sd	-24(%rbp), %xmm0
	movq	%xmm1, %rax
	movq	%rax, %rdx
	movq	%rdx, %rcx
	movq	%rax, %xmm1
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rcx, %xmm2
	movq	%xmm1, %r8
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	call	printf
	jmp	.L4
.L12:
	pxor	%xmm0, %xmm0
	ucomiss	-20(%rbp), %xmm0
	jp	.L5
	pxor	%xmm0, %xmm0
	ucomiss	-20(%rbp), %xmm0
	jne	.L5
	movss	-40(%rbp), %xmm1
	movss	.LC4(%rip), %xmm0
	xorps	%xmm0, %xmm1
	movss	-36(%rbp), %xmm0
	addss	%xmm0, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	cvtss2sd	-28(%rbp), %xmm1
	cvtss2sd	-24(%rbp), %xmm0
	movq	%xmm1, %rax
	movq	%rax, %rdx
	movq	%rdx, %rcx
	movq	%rax, %xmm1
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rcx, %xmm2
	movq	%xmm1, %r8
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rcx
	call	printf
	jmp	.L4
.L5:
	pxor	%xmm0, %xmm0
	ucomiss	-20(%rbp), %xmm0
	jbe	.L4
	movss	-40(%rbp), %xmm1
	movss	.LC4(%rip), %xmm0
	xorps	%xmm0, %xmm1
	movss	-36(%rbp), %xmm0
	addss	%xmm0, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movss	-28(%rbp), %xmm0
	movss	%xmm0, -24(%rbp)
	movss	-20(%rbp), %xmm1
	movss	.LC4(%rip), %xmm0
	xorps	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm5
	movq	%xmm5, %rax
	movq	%rax, %xmm0
	call	sqrt
	movq	%xmm0, %rax
	movss	-36(%rbp), %xmm0
	addss	%xmm0, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	%rax, %xmm4
	divsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -32(%rbp)
	cvtss2sd	-32(%rbp), %xmm0
	cvtss2sd	-28(%rbp), %xmm3
	cvtss2sd	-32(%rbp), %xmm2
	cvtss2sd	-24(%rbp), %xmm1
	movq	%xmm3, %rax
	movq	%rax, %rdx
	movq	%rdx, %r8
	movq	%rax, %xmm5
	movq	%xmm2, %rax
	movq	%rax, %rdx
	movq	%rdx, %rcx
	movq	%rax, %xmm4
	movq	%xmm1, %rax
	movq	%rax, %rdx
	movsd	%xmm0, 32(%rsp)
	movq	%r8, %xmm3
	movq	%xmm5, %r9
	movq	%rcx, %xmm2
	movq	%xmm4, %r8
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC7(%rip), %rcx
	call	printf
.L4:
	call	getch
	movl	$0, %eax
	movaps	-16(%rbp), %xmm6
	addq	$96, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC2:
	.long	1082130432
	.align 16
.LC4:
	.long	-2147483648
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	getch;	.scl	2;	.type	32;	.endef
