	.file	"project.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "\12Enter any character: \0"
.LC1:
	.ascii "%c\0"
.LC2:
	.ascii "Character is an ALPHABET.\0"
.LC3:
	.ascii "Character is NOT ALPHABET.\0"
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
	cmpl	$96, %eax
	jle	.L2
	movl	-4(%rbp), %eax
	cmpl	$122, %eax
	jle	.L3
.L2:
	movl	-4(%rbp), %eax
	cmpl	$64, %eax
	jle	.L4
	movl	-4(%rbp), %eax
	cmpl	$90, %eax
	jg	.L4
.L3:
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L5
.L4:
	leaq	.LC3(%rip), %rcx
	call	printf
.L5:
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
