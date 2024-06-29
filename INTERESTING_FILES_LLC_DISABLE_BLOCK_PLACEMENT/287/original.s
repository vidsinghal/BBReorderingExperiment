	.text
	.file	""
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_2
# %bb.1:                                # %if.end
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	callq	N_VNew_Serial@PLT
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
	movq	(%rbx), %rax
	movq	$0, (%rax)
	movq	(%rbx), %rax
	movq	(%rax), %rax
	movq	$0, (%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
