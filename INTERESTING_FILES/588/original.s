	.text
	.file	""
	.globl	cs_dl_post                      # -- Begin function cs_dl_post
	.p2align	4, 0x90
	.type	cs_dl_post,@function
cs_dl_post:                             # @cs_dl_post
# %bb.0:                                # %entry
	testb	$1, %dil
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	cs_dl_post, .Lfunc_end0-cs_dl_post
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
