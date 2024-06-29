	.text
	.file	""
	.globl	ComputeIncrementsForPlanar      # -- Begin function ComputeIncrementsForPlanar
	.p2align	4, 0x90
	.type	ComputeIncrementsForPlanar,@function
ComputeIncrementsForPlanar:             # @ComputeIncrementsForPlanar
# %bb.0:                                # %entry
	andl	$7, %edi
	cmpl	$1, %edi
	je	.LBB0_3
# %bb.1:                                # %entry
	testl	%edi, %edi
	jne	.LBB0_4
# %bb.2:                                # %for.end
	retq
.LBB0_3:                                # %for.body
	movl	$0, (%rsi)
	retq
.LBB0_4:                                # %for.body.us.preheader
	movq	$0, (%rsi)
.LBB0_5:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_5
.Lfunc_end0:
	.size	ComputeIncrementsForPlanar, .Lfunc_end0-ComputeIncrementsForPlanar
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
