	.text
	.file	""
	.globl	slatrs_                         # -- Begin function slatrs_
	.p2align	4, 0x90
	.type	slatrs_,@function
slatrs_:                                # @slatrs_
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_2
# %bb.1:                                # %land.lhs.true
	movl	0, %eax
.LBB0_2:                                # %if.else
	andb	%sil, %dl
	testb	$1, %dl
	je	.LBB0_4
# %bb.3:                                # %land.lhs.true10
	movl	0, %eax
.LBB0_4:                                # %if.else14
	testb	$1, %dil
	je	.LBB0_6
# %bb.5:                                # %land.lhs.true16
	movl	0, %eax
.LBB0_6:                                # %if.else20
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	slatrs_, .Lfunc_end0-slatrs_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
