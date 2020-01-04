	.file	"project.c"
	.text
	.globl	compoundInterest
	.def	compoundInterest;	.scl	2;	.type	32;	.endef
	.seh_proc	compoundInterest
compoundInterest:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	movaps	%xmm6, -16(%rbp)
	.seh_savexmm	%xmm6, 32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movss	%xmm2, 32(%rbp)
	pxor	%xmm6, %xmm6
	cvtsi2sd	16(%rbp), %xmm6
	pxor	%xmm2, %xmm2
	cvtsi2sd	24(%rbp), %xmm2
	movss	32(%rbp), %xmm0
	movss	.LC0(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	.LC1(%rip), %xmm1
	addss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm3
	movq	%xmm3, %rax
	movapd	%xmm2, %xmm1
	movq	%rax, %xmm0
	call	pow
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	mulsd	%xmm6, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movaps	-16(%rbp), %xmm6
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC2:
	.ascii "\12Enter principle (amount): \0"
.LC3:
	.ascii "%d\0"
.LC4:
	.ascii "\12Enter time: \0"
.LC5:
	.ascii "\12Enter rate: \0"
.LC6:
	.ascii "%f\0"
.LC8:
	.ascii "\12Compound Interest = %f\12 \12\0"
.LC9:
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
	leaq	.LC2(%rip), %rcx
	call	printf
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	leaq	.LC4(%rip), %rcx
	call	printf
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	scanf
	leaq	.LC5(%rip), %rcx
	call	printf
	leaq	-12(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rcx
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
	call	compoundInterest
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rcx
	call	printf
	jmp	.L6
.L4:
	leaq	.LC9(%rip), %rcx
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
	.align 4
.LC1:
	.long	1065353216
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	pow;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
