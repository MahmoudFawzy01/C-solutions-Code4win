	.file	"project.c"
	.text
	.globl	Diameter
	.def	Diameter;	.scl	2;	.type	32;	.endef
	.seh_proc	Diameter
Diameter:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	movss	16(%rbp), %xmm0
	addss	%xmm0, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	CircleCicumference
	.def	CircleCicumference;	.scl	2;	.type	32;	.endef
	.seh_proc	CircleCicumference
CircleCicumference:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	cvtss2sd	16(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	CircleArea
	.def	CircleArea;	.scl	2;	.type	32;	.endef
	.seh_proc	CircleArea
CircleArea:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movss	%xmm0, 16(%rbp)
	cvtss2sd	16(%rbp), %xmm0
	movsd	.LC1(%rip), %xmm1
	mulsd	%xmm0, %xmm1
	cvtss2sd	16(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC2:
	.ascii "\12Enter radius: \0"
.LC3:
	.ascii "%f\0"
	.align 8
.LC5:
	.ascii "\12The diameter of this circle is: %.2f units \12 \12\0"
	.align 8
.LC6:
	.ascii "\12The cicumference of this circle is: %.2f units \12 \12\0"
	.align 8
.LC7:
	.ascii "\12The area of this circle is: %.2f units \12 \12\0"
	.align 8
.LC8:
	.ascii "\12Please enter valid length or width.\12 \0"
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
	movss	-4(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L13
	movl	-4(%rbp), %eax
	movd	%eax, %xmm0
	call	Diameter
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	call	printf
	movl	-4(%rbp), %eax
	movd	%eax, %xmm0
	call	CircleCicumference
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rcx
	call	printf
	movl	-4(%rbp), %eax
	movd	%eax, %xmm0
	call	CircleArea
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC7(%rip), %rcx
	call	printf
	jmp	.L10
.L13:
	leaq	.LC8(%rip), %rcx
	call	puts
.L10:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	1227133513
	.long	1075389586
	.align 8
.LC1:
	.long	1227133513
	.long	1074341010
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
