	.text
	.file	""
	.globl	apme_initLimdfsstate            # -- Begin function apme_initLimdfsstate
	.p2align	4, 0x90
	.type	apme_initLimdfsstate,@function
apme_initLimdfsstate:                   # @apme_initLimdfsstate
# %bb.0:                                # %entry
	movq	$0, (%rsi)
	cmpb	$0, (%rdi)
	je	.LBB0_2
# %bb.1:                                # %if.then
	movq	$0, (%rdi)
	movq	$0, (%rsi)
	retq
.LBB0_2:                                # %if.else
	movq	$1, (%rdi)
	retq
.Lfunc_end0:
	.size	apme_initLimdfsstate, .Lfunc_end0-apme_initLimdfsstate
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
