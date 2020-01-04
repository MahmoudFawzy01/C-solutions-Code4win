	.file	"project.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "\12Enter any number: \0"
.LC1:
	.ascii "%d\0"
	.align 8
.LC2:
	.ascii "\12Input nth bit to clear (0:31): \0"
	.align 8
.LC3:
	.ascii "Number before clear : %d (in decimal).\12\0"
	.align 8
.LC4:
	.ascii "Number after  clear : %d (in decimal).\12\0"
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
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	leaq	.LC2(%rip), %rcx
	call	printf
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	js	.L2
	movl	-8(%rbp), %eax
	cmpl	$31, %eax
	ja	.L2
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	printf
	movl	-8(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	notl	%eax
	movl	%eax, %edx
	movl	-4(%rbp), %eax
	andl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC4(%rip), %rcx
	call	printf
.L2:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
