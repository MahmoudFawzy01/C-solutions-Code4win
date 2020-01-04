	.file	"project.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "\12Enter any character: \0"
.LC1:
	.ascii "%c\0"
.LC2:
	.ascii "'%c' is Vowel.\0"
.LC3:
	.ascii "'%c' is Consonant.\0"
.LC4:
	.ascii "'%c' is not an alphabet.\0"
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
	cmpl	$97, %eax
	je	.L2
	movl	-4(%rbp), %eax
	cmpl	$101, %eax
	je	.L2
	movl	-4(%rbp), %eax
	cmpl	$105, %eax
	je	.L2
	movl	-4(%rbp), %eax
	cmpl	$111, %eax
	je	.L2
	movl	-4(%rbp), %eax
	cmpl	$117, %eax
	je	.L2
	movl	-4(%rbp), %eax
	cmpl	$65, %eax
	je	.L2
	movl	-4(%rbp), %eax
	cmpl	$69, %eax
	je	.L2
	movl	-4(%rbp), %eax
	cmpl	$73, %eax
	je	.L2
	movl	-4(%rbp), %eax
	cmpl	$79, %eax
	je	.L2
	movl	-4(%rbp), %eax
	cmpl	$85, %eax
	jne	.L3
.L2:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L4
.L3:
	movl	-4(%rbp), %eax
	cmpl	$96, %eax
	jle	.L5
	movl	-4(%rbp), %eax
	cmpl	$122, %eax
	jle	.L6
.L5:
	movl	-4(%rbp), %eax
	cmpl	$64, %eax
	jle	.L7
	movl	-4(%rbp), %eax
	cmpl	$90, %eax
	jg	.L7
.L6:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	printf
	jmp	.L4
.L7:
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC4(%rip), %rcx
	call	printf
.L4:
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
