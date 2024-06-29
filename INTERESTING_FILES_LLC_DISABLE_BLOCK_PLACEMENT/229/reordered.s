	.text
	.file	""
	.globl	bisect                          # -- Begin function bisect
	.p2align	4, 0x90
	.type	bisect,@function
bisect:                                 # @bisect
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	setle	%al
	testb	%dl, %al
	je	.LBB0_4
# %bb.1:                                # %for.body.lr.ph.split
	testb	$1, %sil
	je	.LBB0_3
.LBB0_2:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_3
.LBB0_4:                                # %common.ret
	xorps	%xmm0, %xmm0
	retq
.Lfunc_end0:
	.size	bisect, .Lfunc_end0-bisect
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
