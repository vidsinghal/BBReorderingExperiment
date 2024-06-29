	.text
	.file	""
	.globl	gt_chain2dim_arguments_check    # -- Begin function gt_chain2dim_arguments_check
	.p2align	4, 0x90
	.type	gt_chain2dim_arguments_check,@function
gt_chain2dim_arguments_check:           # @gt_chain2dim_arguments_check
# %bb.0:                                # %entry
	testq	%rdx, %rdx
	sete	%al
	testb	%al, %sil
	je	.LBB0_2
.LBB0_1:                                # %if.then1
	movl	$0, 0
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %if.end2
	xorpd	%xmm0, %xmm0
	ucomisd	(%rdi), %xmm0
	jae	.LBB0_1
# %bb.3:                                # %common.ret1
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gt_chain2dim_arguments_check, .Lfunc_end0-gt_chain2dim_arguments_check
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
