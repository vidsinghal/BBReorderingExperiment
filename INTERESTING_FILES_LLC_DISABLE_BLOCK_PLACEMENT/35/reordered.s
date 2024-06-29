	.text
	.file	""
	.globl	slatrs_                         # -- Begin function slatrs_
	.p2align	4, 0x90
	.type	slatrs_,@function
slatrs_:                                # @slatrs_
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_5
.LBB0_1:                                # %if.else
	andb	%sil, %dl
	testb	$1, %dl
	jne	.LBB0_4
.LBB0_2:                                # %if.else14
	testb	$1, %dil
	jne	.LBB0_6
# %bb.3:                                # %if.else20
	xorl	%eax, %eax
	retq
.LBB0_4:                                # %land.lhs.true10
	movl	0, %eax
	jmp	.LBB0_2
.LBB0_5:                                # %land.lhs.true
	movl	0, %eax
	jmp	.LBB0_1
.LBB0_6:                                # %land.lhs.true16
	movl	0, %eax
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	slatrs_, .Lfunc_end0-slatrs_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
