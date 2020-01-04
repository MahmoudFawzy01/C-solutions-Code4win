	.file	"project.c"
	.text
	.globl	equilateralTriangleArea
	.def	equilateralTriangleArea;	.scl	2;	.type	32;	.endef
	.seh_proc	equilateralTriangleArea
equilateralTriangleArea:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	cvtss2sd	16(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	cvtss2sd	16(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "\12Enter side of the equilateral triangle: \0"
.LC2:
	.ascii "%f\0"
	.align 8
.LC4:
	.ascii "\12Area of the equilateral triangle = %.2f sq. units\12 \12\0"
.LC5:
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
	movss	-4(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L9
	movl	-4(%rbp), %eax
	movd	%eax, %xmm0
	call	equilateralTriangleArea
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	printf
	jmp	.L6
.L9:
	leaq	.LC5(%rip), %rcx
	call	puts
.L6:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	-396866390
	.long	1071363706
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
