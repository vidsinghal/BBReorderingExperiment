	.text
	.file	""
	.globl	ComputeIncrementsForPlanar      # -- Begin function ComputeIncrementsForPlanar
	.p2align	4, 0x90
	.type	ComputeIncrementsForPlanar,@function
ComputeIncrementsForPlanar:             # @ComputeIncrementsForPlanar
# %bb.0:                                # %entry
	andl	$7, %edi
	je	.LBB0_5
# %bb.1:                                # %entry
	cmpl	$1, %edi
	je	.LBB0_4
# %bb.2:                                # %for.body.us.preheader
	movq	$0, (%rsi)
.LBB0_3:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_3
.LBB0_4:                                # %for.body
	movl	$0, (%rsi)
.LBB0_5:                                # %for.end
	retq
.Lfunc_end0:
	.size	ComputeIncrementsForPlanar, .Lfunc_end0-ComputeIncrementsForPlanar
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
