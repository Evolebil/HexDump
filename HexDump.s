	.file	"HexDump.c"
	.text
	.section	.rodata
.LC1:
	.string	"  "
.LC2:
	.string	"   "
.LC3:
	.string	"  |"
.LC4:
	.string	"|"
.LC0:
	.string	"0123456789abcdef"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$1, -44(%rbp)
	movl	$0, -40(%rbp)
	movl	-44(%rbp), %eax
	cltq
	movq	%rax, %rdi
	call	malloc@PLT
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jne	.L4
	movl	$0, %eax
	jmp	.L3
.L6:
	movl	-40(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -44(%rbp)
	jg	.L5
	addl	$1, -44(%rbp)
	movl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -8(%rbp)
.L5:
	movl	-40(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -40(%rbp)
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	-12(%rbp), %edx
	movb	%dl, (%rax)
.L4:
	call	getchar@PLT
	movl	%eax, -12(%rbp)
	cmpl	$-1, -12(%rbp)
	jne	.L6
	movl	-40(%rbp), %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movb	$0, (%rax)
	movl	$0, -36(%rbp)
	jmp	.L7
.L20:
	movl	$28, -32(%rbp)
	jmp	.L8
.L9:
	movl	-32(%rbp), %eax
	movl	-36(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$15, %eax
	cltq
	leaq	.LC0(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	subl	$4, -32(%rbp)
.L8:
	cmpl	$0, -32(%rbp)
	jns	.L9
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -28(%rbp)
	jmp	.L10
.L15:
	movl	$0, -24(%rbp)
	jmp	.L11
.L14:
	movl	-36(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -40(%rbp)
	jle	.L12
	movl	-36(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	shrb	$4, %al
	movzbl	%al, %eax
	cltq
	leaq	.LC0(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	movl	-36(%rbp), %edx
	movl	-24(%rbp), %eax
	addl	%eax, %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	andl	$15, %eax
	cltq
	leaq	.LC0(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	movl	$32, %edi
	call	putchar@PLT
	jmp	.L13
.L12:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L13:
	addl	$1, -24(%rbp)
.L11:
	cmpl	$7, -24(%rbp)
	jle	.L14
	movl	$32, %edi
	call	putchar@PLT
	addl	$8, -28(%rbp)
.L10:
	cmpl	$8, -28(%rbp)
	jle	.L15
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -20(%rbp)
	jmp	.L16
.L19:
	movl	-36(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	cmpl	%eax, -40(%rbp)
	jle	.L17
	movl	-36(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$31, %al
	jbe	.L18
	movl	-36(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	cmpb	$126, %al
	ja	.L18
	movl	-36(%rbp), %edx
	movl	-20(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	jmp	.L17
.L18:
	movl	$46, %edi
	call	putchar@PLT
.L17:
	addl	$1, -20(%rbp)
.L16:
	cmpl	$15, -20(%rbp)
	jle	.L19
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	addl	$16, -36(%rbp)
.L7:
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jl	.L20
	movl	$28, -16(%rbp)
	jmp	.L21
.L22:
	movl	-16(%rbp), %eax
	movl	-40(%rbp), %edx
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	andl	$15, %eax
	cltq
	leaq	.LC0(%rip), %rdx
	movzbl	(%rax,%rdx), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	subl	$4, -16(%rbp)
.L21:
	cmpl	$0, -16(%rbp)
	jns	.L22
	movl	$10, %edi
	call	putchar@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
	movl	$0, %eax
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (GNU) 15.2.1 20260209"
	.section	.note.GNU-stack,"",@progbits
