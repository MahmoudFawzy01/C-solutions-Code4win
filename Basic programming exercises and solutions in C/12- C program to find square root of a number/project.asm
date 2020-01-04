	.file	"project.c"
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "\12Please Enter any number to find the square root : \0"
.LC1:
	.ascii "%lf\0"
	.align 8
.LC3:
	.ascii "Square root of %.2lf = %.2lf \12 \12\0"
.LC4:
	.ascii "Enter valid value. \12 \0"
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
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movsd	-8(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.L7
	movq	-8(%rbp), %rax
	movq	%rax, %xmm0
	call	sqrt
	movq	%xmm0, %rax
	movsd	-8(%rbp), %xmm0
	movq	%rax, %rdx
	movq	%rdx, %rcx
	movq	%rax, %xmm1
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rcx, %xmm2
	movq	%xmm1, %r8
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rcx
	call	printf
	jmp	.L4
.L7:
	leaq	.LC4(%rip), %rcx
	call	puts
.L4:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	sqrt;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
