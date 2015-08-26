	.file	"add.c"
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %ebp
	.cfi_def_cfa_register 6
	andl	$-16, %rsp
	subq	$32, %rsp
	movq	$2, 20(%rsp)
	movq	$3, 24(%rsp)
	movq	24(%rsp), %eax
	movq	20(%rsp), %edx
	addq	%rdx, %eax
	movq	%rax, 28(%esp)
	movq	28(%rsp), %eax
	movq	%rax, 4(%esp)
	movq	$.LC0, (%rsp)
	call	printf
	movq	$0, %rax
	leave
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
