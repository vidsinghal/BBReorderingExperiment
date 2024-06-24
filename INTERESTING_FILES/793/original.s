	.text
	.file	""
	.globl	scatter_partial_double_3        # -- Begin function scatter_partial_double_3
	.p2align	4, 0x90
	.type	scatter_partial_double_3,@function
scatter_partial_double_3:               # @scatter_partial_double_3
# %bb.0:                                # %entry
	xorb	$1, %dl
	testq	%rsi, %rsi
	setne	%al
	testb	%dl, %al
	je	.LBB0_2
# %bb.1:                                # %for.body6
	movabsq	$4607182418800017408, %rax      # imm = 0x3FF0000000000000
	movq	%rax, (%rdi)
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	scatter_partial_double_3, .Lfunc_end0-scatter_partial_double_3
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
