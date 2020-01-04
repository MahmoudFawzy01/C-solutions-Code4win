	.file	"project.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "\12Enter three sides of triangle: \0"
.LC1:
	.ascii "%d%d%d\0"
.LC2:
	.ascii "Triangle is valid.\0"
.LC3:
	.ascii "Triangle is not valid.\0"
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
	leaq	-12(%rbp), %rcx
	leaq	-8(%rbp), %rdx
	leaq	-4(%rbp), %rax
	movq	%rcx, %r9
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%eax, %edx
	movl	-12(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L2
	movl	-4(%rbp), %edx
	movl	-12(%rbp), %eax
	addl	%eax, %edx
	movl	-8(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L2
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	addl	%eax, %edx
	movl	-4(%rbp), %eax
	cmpl	%eax, %edx
	jle	.L2
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L3
.L2:
	leaq	.LC3(%rip), %rcx
	call	printf
.L3:
	call	getch
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	getch;	.scl	2;	.type	32;	.endef
