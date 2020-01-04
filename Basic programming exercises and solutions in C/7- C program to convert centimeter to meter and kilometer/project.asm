	.file	"project.c"
	.text
	.globl	ConvertToMeter
	.def	ConvertToMeter;	.scl	2;	.type	32;	.endef
	.seh_proc	ConvertToMeter
ConvertToMeter:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sd	16(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.globl	ConvertToKilometer
	.def	ConvertToKilometer;	.scl	2;	.type	32;	.endef
	.seh_proc	ConvertToKilometer
ConvertToKilometer:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sd	16(%rbp), %xmm0
	movsd	.LC1(%rip), %xmm1
	divsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC2:
	.ascii "\12Enter length in centimeter: \0"
.LC3:
	.ascii "%d\0"
.LC4:
	.ascii "\12Length in meter = %.2f m\12 \12\0"
	.align 8
.LC5:
	.ascii "\12Length in kilometer = %.2f km\12 \12\0"
	.align 8
.LC6:
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
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jle	.L6
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	ConvertToMeter
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC4(%rip), %rcx
	call	printf
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	ConvertToKilometer
	cvtss2sd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rdx
	movq	%rdx, %xmm1
	movq	%rax, %rdx
	leaq	.LC5(%rip), %rcx
	call	printf
	jmp	.L7
.L6:
	leaq	.LC6(%rip), %rcx
	call	puts
.L7:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	0
	.long	1079574528
	.align 8
.LC1:
	.long	0
	.long	1090021888
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
