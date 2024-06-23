	.text
	.file	""
	.globl	Transcript_velocity_single      # -- Begin function Transcript_velocity_single
	.p2align	4, 0x90
	.type	Transcript_velocity_single,@function
Transcript_velocity_single:             # @Transcript_velocity_single
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_5
# %bb.1:                                # %for.cond3.preheader
	testb	$1, %sil
	je	.LBB0_4
# %bb.2:                                # %for.cond12.preheader
	testb	$1, %dl
	je	.LBB0_3
# %bb.6:                                # %for.end20
	retq
	.p2align	4, 0x90
.LBB0_5:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_4:                                # %for.cond3
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_3:                                # %for.cond12
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_3
.Lfunc_end0:
	.size	Transcript_velocity_single, .Lfunc_end0-Transcript_velocity_single
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
