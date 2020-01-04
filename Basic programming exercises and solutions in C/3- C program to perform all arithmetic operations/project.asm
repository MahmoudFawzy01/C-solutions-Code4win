	.file	"project.c"
	.text
	.globl	Sum
	.def	Sum;	.scl	2;	.type	32;	.endef
	.seh_proc	Sum
Sum:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %edx
	movl	24(%rbp), %eax
	addl	%edx, %eax
	popq	%rbp
	ret
	.seh_endproc
	.globl	Difference
	.def	Difference;	.scl	2;	.type	32;	.endef
	.seh_proc	Difference
Difference:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	subl	24(%rbp), %eax
	popq	%rbp
	ret
	.seh_endproc
	.globl	Product
	.def	Product;	.scl	2;	.type	32;	.endef
	.seh_proc	Product
Product:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	imull	24(%rbp), %eax
	popq	%rbp
	ret
	.seh_endproc
	.globl	Quotient
	.def	Quotient;	.scl	2;	.type	32;	.endef
	.seh_proc	Quotient
Quotient:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	cltd
	idivl	24(%rbp)
	popq	%rbp
	ret
	.seh_endproc
	.globl	Modulus
	.def	Modulus;	.scl	2;	.type	32;	.endef
	.seh_proc	Modulus
Modulus:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	16(%rbp), %eax
	cltd
	idivl	24(%rbp)
	movl	%edx, %eax
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "\12Enter first number: \0"
.LC1:
	.ascii "%d\0"
.LC2:
	.ascii "\12Enter second number: \0"
.LC3:
	.ascii "\12The sum result is: %d \12 \12\0"
	.align 8
.LC4:
	.ascii "The Difference result is: %d \12 \12\0"
.LC5:
	.ascii "The Product result is: %d \12 \12\0"
	.align 8
.LC6:
	.ascii "The Quotient result is: %d \12 \12\0"
.LC7:
	.ascii "The Modulus result is: %d \12 \12\0"
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
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jle	.L12
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	jle	.L12
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	Sum
	movl	%eax, %edx
	leaq	.LC3(%rip), %rcx
	call	printf
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	Difference
	movl	%eax, %edx
	leaq	.LC4(%rip), %rcx
	call	printf
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	Product
	movl	%eax, %edx
	leaq	.LC5(%rip), %rcx
	call	printf
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	Quotient
	movl	%eax, %edx
	leaq	.LC6(%rip), %rcx
	call	printf
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	Modulus
	movl	%eax, %edx
	leaq	.LC7(%rip), %rcx
	call	printf
.L12:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
