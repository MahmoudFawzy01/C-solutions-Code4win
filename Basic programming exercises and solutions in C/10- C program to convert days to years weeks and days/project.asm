	.file	"project.c"
	.text
	.globl	daysToYear
	.def	daysToYear;	.scl	2;	.type	32;	.endef
	.seh_proc	daysToYear
daysToYear:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	16(%rbp), %ecx
	movl	$-1282606671, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$8, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	ret
	.seh_endproc
	.globl	daysToWeek
	.def	daysToWeek;	.scl	2;	.type	32;	.endef
	.seh_proc	daysToWeek
daysToWeek:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	24(%rbp), %eax
	imull	$-365, %eax, %edx
	movl	16(%rbp), %eax
	leal	(%rdx,%rax), %ecx
	movl	$-1840700269, %edx
	movl	%ecx, %eax
	imull	%edx
	leal	(%rdx,%rcx), %eax
	sarl	$2, %eax
	movl	%eax, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	popq	%rbp
	ret
	.seh_endproc
	.globl	remainingDays
	.def	remainingDays;	.scl	2;	.type	32;	.endef
	.seh_proc	remainingDays
remainingDays:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movl	%edx, 24(%rbp)
	movl	%r8d, 32(%rbp)
	movl	32(%rbp), %eax
	imull	$365, %eax, %ecx
	movl	24(%rbp), %edx
	movl	%edx, %eax
	sall	$3, %eax
	subl	%edx, %eax
	leal	(%rcx,%rax), %edx
	movl	16(%rbp), %eax
	subl	%edx, %eax
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "\12Enter days: \0"
.LC1:
	.ascii "%d\0"
	.align 8
.LC2:
	.ascii "\12%d days = %d year, %d week, %d day.\12 \12\0"
.LC3:
	.ascii "\12Please enter valid value.\12 \0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	-12(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movl	-12(%rbp), %eax
	testl	%eax, %eax
	jle	.L8
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	call	daysToYear
	movl	%eax, -4(%rbp)
	movl	-12(%rbp), %eax
	movl	-4(%rbp), %edx
	movl	%eax, %ecx
	call	daysToWeek
	movl	%eax, -8(%rbp)
	movl	-12(%rbp), %eax
	movl	-4(%rbp), %ecx
	movl	-8(%rbp), %edx
	movl	%ecx, %r8d
	movl	%eax, %ecx
	call	remainingDays
	movl	%eax, %r8d
	movl	-12(%rbp), %eax
	movl	-8(%rbp), %ecx
	movl	-4(%rbp), %edx
	movl	%r8d, 32(%rsp)
	movl	%ecx, %r9d
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L9
.L8:
	leaq	.LC3(%rip), %rcx
	call	puts
.L9:
	movl	$0, %eax
	addq	$64, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	scanf;	.scl	2;	.type	32;	.endef
	.def	puts;	.scl	2;	.type	32;	.endef
