	.file	"project.c"
	.text
	.globl	getPower
	.def	getPower;	.scl	2;	.type	32;	.endef
	.seh_proc	getPower
getPower:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$16, %rsp
	.seh_stackalloc	16
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-8(%rbp), %eax
	imull	16(%rbp), %eax
	movl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	24(%rbp), %eax
	jl	.L3
	movl	-8(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "\12Please enter base: \0"
.LC1:
	.ascii "%d\0"
.LC2:
	.ascii "\12Please enter exponent: \0"
.LC3:
	.ascii "\12The power result is: %d \12 \12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	leaq	.LC2(%rip), %rcx
	call	printf
	leaq	-12(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	js	.L6
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	js	.L6
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jne	.L7
	movl	$1, -4(%rbp)
	jmp	.L8
.L7:
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	jne	.L9
	movl	$0, -4(%rbp)
	jmp	.L8
.L9:
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	call	getPower
	movl	%eax, -4(%rbp)
.L8:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	printf
.L6:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
