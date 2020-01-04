	.file	"project.c"
	.text
	.globl	ConvertToFahrenheit
	.def	ConvertToFahrenheit;	.scl	2;	.type	32;	.endef
	.seh_proc	ConvertToFahrenheit
ConvertToFahrenheit:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sd	16(%rbp), %xmm0
	movsd	.LC0(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC1(%rip), %xmm1
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC2:
	.ascii "\12Enter temperature in Celsius: \0"
.LC3:
	.ascii "%d\0"
	.align 8
.LC4:
	.ascii "\12%d Celsius = %.2f Fahrenheit\12 \12\0"
	.align 8
.LC5:
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
	jle	.L4
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	ConvertToFahrenheit
	cvtss2sd	%xmm0, %xmm0
	movl	-4(%rbp), %eax
	movq	%xmm0, %rdx
	movq	%rdx, %r8
	movq	%rdx, %rcx
	movq	%r8, %rdx
	movq	%rcx, %xmm0
	movq	%rdx, %xmm2
	movq	%xmm0, %r8
	movl	%eax, %edx
	leaq	.LC4(%rip), %rcx
	call	printf
	jmp	.L5
.L4:
	leaq	.LC5(%rip), %rcx
	call	puts
.L5:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC0:
	.long	-858993459
	.long	1073532108
	.align 8
.LC1:
	.long	0
	.long	1077936128
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
