	.file	"project.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "\12Input number: \0"
.LC1:
	.ascii "%d\0"
.LC2:
	.ascii "%d is positive.\0"
.LC3:
	.ascii "%d is negative.\0"
.LC4:
	.ascii "%d is zero.\0"
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
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L3
	cmpl	$1, %eax
	jne	.L2
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	shrl	$31, %eax
	movzbl	%al, %eax
	testl	%eax, %eax
	je	.L6
	cmpl	$1, %eax
	je	.L7
	jmp	.L9
.L7:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	printf
	jmp	.L5
.L6:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC4(%rip), %rcx
	call	printf
	nop
.L5:
.L9:
	nop
.L2:
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
