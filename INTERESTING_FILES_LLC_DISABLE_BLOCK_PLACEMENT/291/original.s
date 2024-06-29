	.text
	.file	""
	.globl	cunbdb1_                        # -- Begin function cunbdb1_
	.p2align	4, 0x90
	.type	cunbdb1_,@function
cunbdb1_:                               # @cunbdb1_
# %bb.0:                                # %entry
	cmpl	$2, %esi
	setge	%al
	orb	%dl, %al
	testb	$1, %al
	je	.LBB0_2
# %bb.1:                                # %if.then16
	movl	$0, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	cunbdb1_, .Lfunc_end0-cunbdb1_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
