	.text
	.file	""
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testb	$1, %dil
	je	.LBB0_3
# %bb.1:                                # %for.body.us.preheader
	movq	%rsi, %rbx
	callq	*(%rsi)
	movl	0, %eax
.LBB0_2:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	callq	*16(%rbx)
	movl	0, %eax
	jmp	.LBB0_2
.LBB0_3:                                # %for.cond.cleanup
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
