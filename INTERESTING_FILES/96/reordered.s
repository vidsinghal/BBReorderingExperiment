	.text
	.file	""
	.globl	chbgvx_                         # -- Begin function chbgvx_
	.p2align	4, 0x90
	.type	chbgvx_,@function
chbgvx_:                                # @chbgvx_
# %bb.0:                                # %entry
	testl	%edi, %edi
	sete	%al
	testb	%al, %sil
	je	.LBB0_2
# %bb.1:                                # %lor.lhs.false31
	movl	0, %eax
.LBB0_2:                                # %if.end99
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	chbgvx_, .Lfunc_end0-chbgvx_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
