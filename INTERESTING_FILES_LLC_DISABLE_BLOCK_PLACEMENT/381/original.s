	.text
	.file	""
	.globl	gt_matstat_arguments_check      # -- Begin function gt_matstat_arguments_check
	.p2align	4, 0x90
	.type	gt_matstat_arguments_check,@function
gt_matstat_arguments_check:             # @gt_matstat_arguments_check
# %bb.0:                                # %entry
	movl	$0, (%rsi)
	movb	$0, (%rdi)
	movb	$0, (%rsi)
	cmpb	$1, (%rdi)
	je	.LBB0_2
# %bb.1:                                # %if.end48
	movzbl	0, %eax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gt_matstat_arguments_check, .Lfunc_end0-gt_matstat_arguments_check
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
