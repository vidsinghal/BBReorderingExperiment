	.text
	.file	""
	.globl	gt_grep_unit_test               # -- Begin function gt_grep_unit_test
	.p2align	4, 0x90
	.type	gt_grep_unit_test,@function
gt_grep_unit_test:                      # @gt_grep_unit_test
# %bb.0:                                # %entry
	cmpb	$0, (%rdi)
	je	.LBB0_2
# %bb.1:                                # %if.then73
	movl	$0, 0
.LBB0_2:                                # %if.end74
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gt_grep_unit_test, .Lfunc_end0-gt_grep_unit_test
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
