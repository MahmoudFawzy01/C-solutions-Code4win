	.file	"project.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "\12Enter any number: \0"
.LC1:
	.ascii "%d\0"
	.align 8
.LC2:
	.ascii "Output leading zeros: %d (using %d byte signed integer).\12\0"
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
	movl	$0, -8(%rbp)
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	-12(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movl	$31, -4(%rbp)
	jmp	.L2
.L5:
	movl	-12(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L8
	addl	$1, -8(%rbp)
	subl	$1, -4(%rbp)
.L2:
	cmpl	$0, -4(%rbp)
	jg	.L5
	jmp	.L4
.L8:
	nop
.L4:
	cmpl	$0, -8(%rbp)
	jle	.L6
	movl	-8(%rbp), %eax
	movl	$4, %r8d
	movl	%eax, %edx
	leaq	.LC2(%rip), %rcx
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
