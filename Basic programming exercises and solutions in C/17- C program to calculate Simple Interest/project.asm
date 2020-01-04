	.file	"project.c"
	.text
	.globl	simpleInterest
	.def	simpleInterest;	.scl	2;	.type	32;	.endef
	.seh_proc	simpleInterest
simpleInterest:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movss	%xmm2, 32(%rbp)
	movl	16(%rbp), %eax
	imull	24(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	mulss	32(%rbp), %xmm0
	movss	.LC0(%rip), %xmm1
	divss	%xmm1, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC1:
	.ascii "\12Enter principle (amount): \0"
.LC2:
	.ascii "%d\0"
.LC3:
	.ascii "\12Enter time: \0"
.LC4:
	.ascii "\12Enter rate: \0"
.LC5:
	.ascii "%f\0"
.LC7:
	.ascii "\12Simple Interest = %f\12 \12\0"
.LC8:
	.ascii "\12Enter valid value. \12 \0"
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
	leaq	.LC1(%rip), %rcx
	call	printf
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	scanf
	leaq	.LC3(%rip), %rcx
	call	printf
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	scanf
	leaq	.LC4(%rip), %rcx
	call	printf
	leaq	-12(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	call	scanf
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jle	.L4
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	jle	.L4
	movss	-12(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L4
	movss	-12(%rbp), %xmm0
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movaps	%xmm0, %xmm2
	movl	%eax, %ecx
	call	simpleInterest
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC7(%rip), %rcx
	call	printf
	jmp	.L6
.L4:
	leaq	.LC8(%rip), %rcx
	call	puts
.L6:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 4
.LC0:
	.long	1120403456
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
