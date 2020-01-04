	.file	"project.c"
	.text
	.globl	RectPerimeter
	.def	RectPerimeter;	.scl	2;	.type	32;	.endef
	.seh_proc	RectPerimeter
RectPerimeter:
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
	addl	%eax, %eax
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "\12Enter Length: \0"
.LC1:
	.ascii "%d\0"
.LC2:
	.ascii "\12Enter Width: \0"
	.align 8
.LC3:
	.ascii "\12The perimeter of this rectangle is: %d \12 \12\0"
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
	jle	.L4
	movl	-8(%rbp), %eax
	testl	%eax, %eax
	jle	.L4
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %ecx
	call	RectPerimeter
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
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
