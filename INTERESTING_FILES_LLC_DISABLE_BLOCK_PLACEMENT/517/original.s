	.text
	.file	""
	.globl	gt_chain2dim_arguments_check    # -- Begin function gt_chain2dim_arguments_check
	.p2align	4, 0x90
	.type	gt_chain2dim_arguments_check,@function
gt_chain2dim_arguments_check:           # @gt_chain2dim_arguments_check
# %bb.0:                                # %entry
	testq	%rdx, %rdx
	sete	%al
	andb	%sil, %al
	cmpb	$1, %al
	je	.LBB0_2
# %bb.1:                                # %if.end2
	xorpd	%xmm0, %xmm0
	ucomisd	(%rdi), %xmm0
	jb	.LBB0_3
.LBB0_2:                                # %if.then6
	movl	$0, 0
.LBB0_3:                                # %common.ret1
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gt_chain2dim_arguments_check, .Lfunc_end0-gt_chain2dim_arguments_check
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
