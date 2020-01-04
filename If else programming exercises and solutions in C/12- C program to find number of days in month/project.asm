	.file	"project.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "\12Enter month number: \0"
.LC1:
	.ascii "%c\0"
.LC2:
	.ascii "31 days\0"
.LC3:
	.ascii "28 or 29 days\0"
.LC4:
	.ascii "30 days\0"
	.align 8
.LC5:
	.ascii "Invalid input! Please enter month number between (1-12).\0"
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
	cmpl	$1, %eax
	jne	.L2
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L3
.L2:
	movl	-4(%rbp), %eax
	cmpl	$2, %eax
	jne	.L4
	leaq	.LC3(%rip), %rcx
	call	printf
	jmp	.L3
.L4:
	movl	-4(%rbp), %eax
	cmpl	$3, %eax
	jne	.L5
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L3
.L5:
	movl	-4(%rbp), %eax
	cmpl	$4, %eax
	jne	.L6
	leaq	.LC4(%rip), %rcx
	call	printf
	jmp	.L3
.L6:
	movl	-4(%rbp), %eax
	cmpl	$5, %eax
	jne	.L7
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L3
.L7:
	movl	-4(%rbp), %eax
	cmpl	$6, %eax
	jne	.L8
	leaq	.LC4(%rip), %rcx
	call	printf
	jmp	.L3
.L8:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jne	.L9
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L3
.L9:
	movl	-4(%rbp), %eax
	cmpl	$8, %eax
	jne	.L10
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L3
.L10:
	movl	-4(%rbp), %eax
	cmpl	$9, %eax
	jne	.L11
	leaq	.LC4(%rip), %rcx
	call	printf
	jmp	.L3
.L11:
	movl	-4(%rbp), %eax
	cmpl	$10, %eax
	jne	.L12
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L3
.L12:
	movl	-4(%rbp), %eax
	cmpl	$11, %eax
	jne	.L13
	leaq	.LC4(%rip), %rcx
	call	printf
	jmp	.L3
.L13:
	movl	-4(%rbp), %eax
	cmpl	$12, %eax
	jne	.L14
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L3
.L14:
	leaq	.LC5(%rip), %rcx
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
