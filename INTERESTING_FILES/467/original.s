	.text
	.file	""
	.globl	dlaed5_                         # -- Begin function dlaed5_
	.p2align	4, 0x90
	.type	dlaed5_,@function
dlaed5_:                                # @dlaed5_
# %bb.0:                                # %entry
	testl	%esi, %esi
	setne	%al
	testb	%dil, %al
	je	.LBB0_2
# %bb.1:                                # %if.then12
	movsd	0, %xmm0                        # xmm0 = mem[0],zero
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	dlaed5_, .Lfunc_end0-dlaed5_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
