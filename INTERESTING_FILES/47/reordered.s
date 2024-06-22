	.text
	.file	""
	.globl	cholmod_postorder               # -- Begin function cholmod_postorder
	.p2align	4, 0x90
	.type	cholmod_postorder,@function
cholmod_postorder:                      # @cholmod_postorder
# %bb.0:                                # %entry
	movl	$1, %eax
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.end
	movl	0, %eax
	xorl	%eax, %eax
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	cholmod_postorder, .Lfunc_end0-cholmod_postorder
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
