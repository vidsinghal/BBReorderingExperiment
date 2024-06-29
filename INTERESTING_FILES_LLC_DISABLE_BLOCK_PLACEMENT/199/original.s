	.text
	.file	""
	.globl	slahqr_                         # -- Begin function slahqr_
	.p2align	4, 0x90
	.type	slahqr_,@function
slahqr_:                                # @slahqr_
# %bb.0:                                # %entry
	testl	%edi, %edi
	sete	%al
	cmpl	%esi, %edi
	setg	%cl
	orb	%al, %cl
	jne	.LBB0_2
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	jns	.LBB0_1
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	slahqr_, .Lfunc_end0-slahqr_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
