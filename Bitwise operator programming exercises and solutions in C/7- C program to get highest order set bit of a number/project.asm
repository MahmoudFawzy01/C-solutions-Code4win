	.file	"project.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "\12Enter any number: \0"
.LC1:
	.ascii "%d\0"
	.align 8
.LC2:
	.ascii "Highest order set bit in %d is %d. \12\0"
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
	movl	$-1, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	-12(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movl	$0, -4(%rbp)
	jmp	.L2
.L4:
	movl	-12(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	je	.L3
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.L3:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	$31, %eax
	jbe	.L4
	cmpl	$0, -8(%rbp)
	js	.L5
	movl	-12(%rbp), %eax
	movl	-8(%rbp), %edx
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
.L5:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
