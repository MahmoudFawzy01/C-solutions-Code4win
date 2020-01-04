	.file	"project.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "\12Enter week number (1-7): \0"
.LC1:
	.ascii "%d\0"
.LC2:
	.ascii "Monday\0"
.LC3:
	.ascii "Tuesday\0"
.LC4:
	.ascii "Wednesday\0"
.LC5:
	.ascii "Thursday\0"
.LC6:
	.ascii "Friday\0"
.LC7:
	.ascii "Saturday\0"
.LC8:
	.ascii "Sunday\0"
	.align 8
.LC9:
	.ascii "Invalid Input! Please enter week number between 1-7.\0"
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
	leaq	.LC4(%rip), %rcx
	call	printf
	jmp	.L3
.L5:
	movl	-4(%rbp), %eax
	cmpl	$4, %eax
	jne	.L6
	leaq	.LC5(%rip), %rcx
	call	printf
	jmp	.L3
.L6:
	movl	-4(%rbp), %eax
	cmpl	$5, %eax
	jne	.L7
	leaq	.LC6(%rip), %rcx
	call	printf
	jmp	.L3
.L7:
	movl	-4(%rbp), %eax
	cmpl	$6, %eax
	jne	.L8
	leaq	.LC7(%rip), %rcx
	call	printf
	jmp	.L3
.L8:
	movl	-4(%rbp), %eax
	cmpl	$7, %eax
	jne	.L9
	leaq	.LC8(%rip), %rcx
	call	printf
	jmp	.L3
.L9:
	leaq	.LC9(%rip), %rcx
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
