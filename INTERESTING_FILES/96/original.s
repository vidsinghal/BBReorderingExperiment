	.text
	.file	""
	.globl	chbgvx_                         # -- Begin function chbgvx_
	.p2align	4, 0x90
	.type	chbgvx_,@function
chbgvx_:                                # @chbgvx_
# %bb.0:                                # %entry
	testl	%r8d, %r8d
	sete	%al
	testb	%al, 8(%rsp)
	jne	.LBB0_2
# %bb.1:                                # %if.then107
	movl	$0, (%rdi)
.LBB0_2:                                # %if.end108
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	chbgvx_, .Lfunc_end0-chbgvx_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
