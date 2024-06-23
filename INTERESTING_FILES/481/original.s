	.text
	.file	""
	.globl	chbev_2stage_                   # -- Begin function chbev_2stage_
	.p2align	4, 0x90
	.type	chbev_2stage_,@function
chbev_2stage_:                          # @chbev_2stage_
# %bb.0:                                # %entry
	testl	%esi, %esi
	sete	%al
	testl	%edx, %edx
	sete	%cl
	orb	%al, %cl
	cmpb	$1, %cl
	je	.LBB0_2
# %bb.1:                                # %if.then82
	movl	$0, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	chbev_2stage_, .Lfunc_end0-chbev_2stage_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
