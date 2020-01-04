	.file	"project.c"
	.text
	.globl	ConvertToCelsius
	.def	ConvertToCelsius;	.scl	2;	.type	32;	.endef
	.seh_proc	ConvertToCelsius
ConvertToCelsius:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %eax
	subl	$32, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movsd	.LC0(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "\12Enter temperature in Fahrenheit: \0"
.LC2:
	.ascii "%d\0"
	.align 8
.LC3:
	.ascii "\12%d Fahrenheit = %.2f Celsius\12 \12\0"
	.align 8
.LC4:
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
	leaq	.LC1(%rip), %rcx
	call	printf
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC2(%rip), %rcx
	call	scanf
	movl	-4(%rbp), %eax
	testl	%eax, %eax
	jle	.L4
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	ConvertToCelsius
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
	leaq	.LC3(%rip), %rcx
	call	printf
	jmp	.L5
.L4:
	leaq	.LC4(%rip), %rcx
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
	.long	1908874354
	.long	1071761180
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
