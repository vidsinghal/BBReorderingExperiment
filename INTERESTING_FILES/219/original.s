	.text
	.file	""
	.globl	gt_tyrsearch                    # -- Begin function gt_tyrsearch
	.p2align	4, 0x90
	.type	gt_tyrsearch,@function
gt_tyrsearch:                           # @gt_tyrsearch
# %bb.0:                                # %entry
	xorb	$1, %dil
	testq	%rsi, %rsi
	setne	%al
	testb	%dil, %al
	je	.LBB0_2
# %bb.1:                                # %if.then6
	movl	$0, 0
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gt_tyrsearch, .Lfunc_end0-gt_tyrsearch
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
