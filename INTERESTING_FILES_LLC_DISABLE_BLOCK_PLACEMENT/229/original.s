	.text
	.file	""
	.globl	bisect                          # -- Begin function bisect
	.p2align	4, 0x90
	.type	bisect,@function
bisect:                                 # @bisect
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	setle	%al
	andb	%dl, %al
	cmpb	$1, %al
	jne	.LBB0_3
# %bb.1:                                # %for.body.lr.ph.split
	testb	$1, %sil
	je	.LBB0_4
.LBB0_2:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %common.ret
	xorps	%xmm0, %xmm0
	retq
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_4
.Lfunc_end0:
	.size	bisect, .Lfunc_end0-bisect
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
