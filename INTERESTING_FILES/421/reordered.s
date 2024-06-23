	.text
	.file	""
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
	jne	.LBB0_2
# %bb.1:                                # %for.body4
	movl	$0, (%rsi)
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	bli_sbcastbbs_mxn, .Lfunc_end0-bli_sbcastbbs_mxn
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
