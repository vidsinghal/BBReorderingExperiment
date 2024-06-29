	.text
	.file	""
	.globl	bli_sgemmtrsmbb_l_zen2_ref      # -- Begin function bli_sgemmtrsmbb_l_zen2_ref
	.p2align	4, 0x90
	.type	bli_sgemmtrsmbb_l_zen2_ref,@function
bli_sgemmtrsmbb_l_zen2_ref:             # @bli_sgemmtrsmbb_l_zen2_ref
# %bb.0:                                # %entry
	movq	0, %rax
	movq	0, %rax
	retq
.Lfunc_end0:
	.size	bli_sgemmtrsmbb_l_zen2_ref, .Lfunc_end0-bli_sgemmtrsmbb_l_zen2_ref
                                        # -- End function
	.globl	bli_sbcastbbs_mxn               # -- Begin function bli_sbcastbbs_mxn
	.p2align	4, 0x90
	.type	bli_sbcastbbs_mxn,@function
bli_sbcastbbs_mxn:                      # @bli_sbcastbbs_mxn
# %bb.0:                                # %entry
	notb	%dl
	testq	%rdi, %rdi
	setle	%al
	orb	%dl, %al
	testb	$1, %al
	jne	.LBB1_2
# %bb.1:                                # %for.body4
	movl	$0, (%rsi)
.LBB1_2:                                # %common.ret
	retq
.Lfunc_end1:
	.size	bli_sbcastbbs_mxn, .Lfunc_end1-bli_sbcastbbs_mxn
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
