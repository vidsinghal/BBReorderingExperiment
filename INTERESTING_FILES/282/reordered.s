	.text
	.file	""
	.globl	zlanhe_                         # -- Begin function zlanhe_
	.p2align	4, 0x90
	.type	zlanhe_,@function
zlanhe_:                                # @zlanhe_
# %bb.0:                                # %entry
	xorps	%xmm1, %xmm1
	testb	$1, %sil
	je	.LBB0_2
# %bb.1:                                # %if.end280
	movaps	%xmm1, %xmm0
	retq
.LBB0_2:                                # %for.cond.preheader
	testl	%edi, %edi
	js	.LBB0_5
	.p2align	4, 0x90
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	testl	%edi, %edi
	jne	.LBB0_3
.LBB0_5:
	retq
.Lfunc_end0:
	.size	zlanhe_, .Lfunc_end0-zlanhe_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits