	.file	"project.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "\12Enter amount: \0"
.LC1:
	.ascii "%d\0"
.LC2:
	.ascii "Total number of notes = \0"
.LC3:
	.ascii "500 = %d\12\0"
.LC4:
	.ascii "100 = %d\12\0"
.LC5:
	.ascii "50 = %d\12\0"
.LC6:
	.ascii "20 = %d\12\0"
.LC7:
	.ascii "10 = %d\12\0"
.LC8:
	.ascii "5 = %d\12\0"
.LC9:
	.ascii "2 = %d\12\0"
.LC10:
	.ascii "1 = %d\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$80, %rsp
	.seh_stackalloc	80
	.seh_endprologue
	call	__main
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	-36(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movl	-36(%rbp), %eax
	cmpl	$499, %eax
	jle	.L2
	movl	-36(%rbp), %ecx
	movl	$274877907, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	imull	$-500, %eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
.L2:
	movl	-36(%rbp), %eax
	cmpl	$99, %eax
	jle	.L3
	movl	-36(%rbp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$5, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	imull	$-100, %eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
.L3:
	movl	-36(%rbp), %eax
	cmpl	$49, %eax
	jle	.L4
	movl	-36(%rbp), %ecx
	movl	$1374389535, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$4, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	imull	$-50, %eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
.L4:
	movl	-36(%rbp), %eax
	cmpl	$19, %eax
	jle	.L5
	movl	-36(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	negl	%eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
.L5:
	movl	-36(%rbp), %eax
	cmpl	$9, %eax
	jle	.L6
	movl	-36(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	negl	%eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
.L6:
	movl	-36(%rbp), %eax
	cmpl	$4, %eax
	jle	.L7
	movl	-36(%rbp), %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	negl	%eax
	movl	-36(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -36(%rbp)
.L7:
	movl	-36(%rbp), %eax
	cmpl	$1, %eax
	jle	.L8
	movl	-36(%rbp), %eax
	movl	%eax, %edx
	shrl	$31, %edx
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, -8(%rbp)
	movl	-36(%rbp), %eax
	movl	-8(%rbp), %edx
	addl	%edx, %edx
	subl	%edx, %eax
	movl	%eax, -36(%rbp)
.L8:
	movl	-36(%rbp), %eax
	testl	%eax, %eax
	jle	.L9
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
.L9:
	leaq	.LC2(%rip), %rcx
	call	puts
	movl	-32(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	printf
	movl	-28(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC4(%rip), %rcx
	call	printf
	movl	-24(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC5(%rip), %rcx
	call	printf
	movl	-20(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC6(%rip), %rcx
	call	printf
	movl	-16(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC7(%rip), %rcx
	call	printf
	movl	-12(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC8(%rip), %rcx
	call	printf
	movl	-8(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC9(%rip), %rcx
	call	printf
	movl	-4(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC10(%rip), %rcx
	call	printf
	call	getch
	movl	$0, %eax
	addq	$80, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
	.def	getch;	.scl	2;	.type	32;	.endef
