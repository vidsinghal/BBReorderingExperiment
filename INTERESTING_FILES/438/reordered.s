	.text
	.file	""
	.globl	apme_initLimdfsstate            # -- Begin function apme_initLimdfsstate
	.p2align	4, 0x90
	.type	apme_initLimdfsstate,@function
apme_initLimdfsstate:                   # @apme_initLimdfsstate
# %bb.0:                                # %entry
	cmpb	$1, (%rdi)
	jne	.LBB0_2
# %bb.1:                                # %if.then
	movq	$0, (%rdi)
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	apme_initLimdfsstate, .Lfunc_end0-apme_initLimdfsstate
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
