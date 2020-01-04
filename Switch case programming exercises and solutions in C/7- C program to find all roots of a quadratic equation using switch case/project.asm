	.file	"project.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC1:
	.ascii "WELCOME TO SIMPLE CALCULATOR\0"
.LC2:
	.ascii "----------------------------\0"
	.align 8
.LC3:
	.ascii "Enter [number 1] [+ - * /] [number 2]\0"
.LC4:
	.ascii "%f %c %f\0"
.LC5:
	.ascii "Invalid operator\0"
.LC6:
	.ascii "%.2f %c %.2f = %.2f\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	call	__main
	pxor	%xmm0, %xmm0
	movss	%xmm0, -4(%rbp)
	leaq	.LC1(%rip), %rcx
	call	puts
	leaq	.LC2(%rip), %rcx
	call	puts
	leaq	.LC3(%rip), %rcx
	call	puts
	leaq	-16(%rbp), %rcx
	leaq	-5(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	scanf
	movzbl	-5(%rbp), %eax
	movsbl	%al, %eax
	cmpl	$43, %eax
	je	.L3
	cmpl	$43, %eax
	jg	.L4
	cmpl	$42, %eax
	je	.L5
	jmp	.L2
.L4:
	cmpl	$45, %eax
	je	.L6
	cmpl	$47, %eax
	je	.L7
	jmp	.L2
.L3:
	movss	-12(%rbp), %xmm1
	movss	-16(%rbp), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.L8
.L6:
	movss	-12(%rbp), %xmm0
	movss	-16(%rbp), %xmm1
	subss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.L8
.L5:
	movss	-12(%rbp), %xmm1
	movss	-16(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.L8
.L7:
	movss	-12(%rbp), %xmm0
	movss	-16(%rbp), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
	jmp	.L8
.L2:
	leaq	.LC5(%rip), %rcx
	call	printf
.L8:
	cvtss2sd	-4(%rbp), %xmm0
	movss	-16(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm2
	movzbl	-5(%rbp), %eax
	movsbl	%al, %edx
	movss	-12(%rbp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movq	%xmm2, %rax
	movq	%rax, %rcx
	movq	%rcx, %r8
	movq	%rax, %xmm2
	movq	%xmm1, %rax
	movq	%rax, %rcx
	movsd	%xmm0, 32(%rsp)
	movq	%r8, %xmm3
	movq	%xmm2, %r9
	movl	%edx, %r8d
	movq	%rcx, %xmm1
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rcx
	call	printf
	call	getch
	movl	$0, %eax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	getch;	.scl	2;	.type	32;	.endef
