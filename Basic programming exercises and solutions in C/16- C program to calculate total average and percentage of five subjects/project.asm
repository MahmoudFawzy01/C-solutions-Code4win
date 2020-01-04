	.file	"project.c"
	.text
	.globl	average
	.def	average;	.scl	2;	.type	32;	.endef
	.seh_proc	average
average:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L3
	movl	-8(%rbp), %eax
	cltd
	idivl	24(%rbp)
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	total
	.def	total;	.scl	2;	.type	32;	.endef
	.seh_proc	total
total:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L6
.L7:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L6:
	movl	-4(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L7
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	precentage
	.def	precentage;	.scl	2;	.type	32;	.endef
	.seh_proc	precentage
precentage:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L10
.L11:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L11
	pxor	%xmm0, %xmm0
	cvtsi2ss	-8(%rbp), %xmm0
	movl	24(%rbp), %eax
	imull	$100, %eax, %eax
	pxor	%xmm1, %xmm1
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	.LC0(%rip), %xmm1
	mulss	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "\12Enter marks of the five subjecs: \0"
.LC2:
	.ascii "%d %d %d %d %d\0"
.LC3:
	.ascii "\12Total = %d\12 \12\0"
.LC4:
	.ascii "\12Average = %d \12 \12\0"
.LC5:
	.ascii "\12Precentage = %.2f\12 \12\0"
.LC6:
	.ascii "\12Enter valid value. \12 \0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	call	__main
	leaq	.LC1(%rip), %rcx
	call	printf
	leaq	-32(%rbp), %rax
	leaq	8(%rax), %r8
	leaq	-32(%rbp), %rax
	leaq	4(%rax), %rcx
	leaq	-32(%rbp), %rax
	leaq	-32(%rbp), %rdx
	addq	$16, %rdx
	movq	%rdx, 40(%rsp)
	leaq	-32(%rbp), %rdx
	addq	$12, %rdx
	movq	%rdx, 32(%rsp)
	movq	%r8, %r9
	movq	%rcx, %r8
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	scanf
	movl	-32(%rbp), %eax
	testl	%eax, %eax
	js	.L14
	movl	-28(%rbp), %eax
	testl	%eax, %eax
	js	.L14
	movl	-24(%rbp), %eax
	testl	%eax, %eax
	js	.L14
	movl	-20(%rbp), %eax
	testl	%eax, %eax
	js	.L14
	movl	-16(%rbp), %eax
	testl	%eax, %eax
	js	.L14
	movl	$5, -4(%rbp)
	movl	-4(%rbp), %edx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	total
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	printf
	movl	-4(%rbp), %edx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	average
	movl	%eax, %edx
	leaq	.LC4(%rip), %rcx
	call	printf
	movl	-4(%rbp), %edx
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	precentage
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	call	printf
	jmp	.L15
.L14:
	leaq	.LC6(%rip), %rcx
	call	puts
.L15:
	movl	$0, %eax
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	1120403456
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
