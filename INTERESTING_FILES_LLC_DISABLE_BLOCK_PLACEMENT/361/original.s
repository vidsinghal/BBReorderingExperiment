	.text
	.file	""
	.globl	unur_hinv_new                   # -- Begin function unur_hinv_new
	.p2align	4, 0x90
	.type	unur_hinv_new,@function
unur_hinv_new:                          # @unur_hinv_new
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dl
	je	.LBB0_2
# %bb.1:                                # %if.end5
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rcx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	_unur_par_new@PLT
	movq	$0, (%r15)
	xorl	%eax, %eax
	cmpq	$0, (%rbx)
	setne	%al
	leal	(%rax,%rax,2), %eax
	movq	(%r14), %rcx
	movl	%eax, (%rcx)
	movq	(%rbx), %rax
	movq	$0, 8(%rax)
	movq	(%rbx), %rax
	movq	$0, 16(%rax)
	movq	$0, (%r14)
	movq	(%rbx), %rax
	movq	$0, 32(%rax)
	movq	(%rbx), %rax
	movl	$0, 52(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	unur_hinv_new, .Lfunc_end0-unur_hinv_new
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
