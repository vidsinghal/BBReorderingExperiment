	.text
	.file	""
	.globl	ztfsm_                          # -- Begin function ztfsm_
	.p2align	4, 0x90
	.type	ztfsm_,@function
ztfsm_:                                 # @ztfsm_
# %bb.0:                                # %entry
	testl	%esi, %esi
	jle	.LBB0_3
# %bb.1:                                # %entry.split.us
	cmpl	$1, %esi
	movq	$0, (%rdi)
	jne	.LBB0_4
	.p2align	4, 0x90
.LBB0_2:                                # %for.cond.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_4:                                # %for.body66
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_4
.Lfunc_end0:
	.size	ztfsm_, .Lfunc_end0-ztfsm_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
