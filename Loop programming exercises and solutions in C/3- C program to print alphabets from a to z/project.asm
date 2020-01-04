	.file	"project.c"
	.def	__main;	.scl	2;	.type	32;	.endef
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
	movb	$97, -1(%rbp)
	jmp	.L2
.L4:
	movsbl	-1(%rbp), %eax
	movl	%eax, %ecx
	call	putchar
	cmpb	$121, -1(%rbp)
	jg	.L3
	movl	$44, %ecx
	call	putchar
.L3:
	movzbl	-1(%rbp), %eax
	addl	$1, %eax
	movb	%al, -1(%rbp)
.L2:
	cmpb	$122, -1(%rbp)
	jle	.L4
	call	getch
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev1, Built by MinGW-W64 project) 6.2.0"
	.def	putchar;	.scl	2;	.type	32;	.endef
	.def	getch;	.scl	2;	.type	32;	.endef
