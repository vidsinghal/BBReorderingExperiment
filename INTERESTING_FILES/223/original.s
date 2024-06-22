	.text
	.file	""
	.globl	isl_schedule_from_schedule_tree # -- Begin function isl_schedule_from_schedule_tree
	.p2align	4, 0x90
	.type	isl_schedule_from_schedule_tree,@function
isl_schedule_from_schedule_tree:        # @isl_schedule_from_schedule_tree
# %bb.0:                                # %entry
	testl	%edi, %edi
	setne	%al
	testb	%sil, %al
	je	.LBB0_2
# %bb.1:                                # %if.then12
	movq	0, %rax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	isl_schedule_from_schedule_tree, .Lfunc_end0-isl_schedule_from_schedule_tree
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
