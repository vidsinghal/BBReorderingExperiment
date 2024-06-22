	.text
	.file	""
	.globl	slahqr_                         # -- Begin function slahqr_
	.p2align	4, 0x90
	.type	slahqr_,@function
slahqr_:                                # @slahqr_
# %bb.0:                                # %entry
	testl	%edi, %edi
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	slahqr_, .Lfunc_end0-slahqr_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
