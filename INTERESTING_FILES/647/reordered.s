	.text
	.file	""
	.globl	d2i_PublicKey                   # -- Begin function d2i_PublicKey
	.p2align	4, 0x90
	.type	d2i_PublicKey,@function
d2i_PublicKey:                          # @d2i_PublicKey
# %bb.0:                                # %entry
	movq	$0, (%rsi)
	testl	%edi, %edi
	setne	%al
	testq	%rdx, %rdx
	setne	%cl
	orb	%al, %cl
	je	.LBB0_2
# %bb.1:                                # %land.lhs.true17
	movl	0, %eax
.LBB0_2:                                # %if.end21
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	d2i_PublicKey, .Lfunc_end0-d2i_PublicKey
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
