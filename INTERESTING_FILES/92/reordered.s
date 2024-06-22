	.text
	.file	""
	.globl	cephes_gammasgn                 # -- Begin function cephes_gammasgn
	.p2align	4, 0x90
	.type	cephes_gammasgn,@function
cephes_gammasgn:                        # @cephes_gammasgn
# %bb.0:                                # %entry
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	setp	%al
	setne	%cl
	orb	%al, %cl
	testb	%sil, %cl
	jne	.LBB0_2
# %bb.1:                                # %if.then5
	movq	$0, (%rdi)
.LBB0_2:                                # %common.ret
	xorpd	%xmm0, %xmm0
	retq
.Lfunc_end0:
	.size	cephes_gammasgn, .Lfunc_end0-cephes_gammasgn
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
