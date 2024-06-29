	.text
	.file	""
	.globl	base_tv_init                    # -- Begin function base_tv_init
	.p2align	4, 0x90
	.type	base_tv_init,@function
base_tv_init:                           # @base_tv_init
# %bb.0:                                # %entry
	testb	$1, %sil
	jne	.LBB0_3
# %bb.1:                                # %if.end
	testb	$1, %dl
	jne	.LBB0_3
# %bb.2:                                # %if.end4
	movq	$0, (%rdi)
.LBB0_3:                                # %if.else
	movl	$0, 0
.Lfunc_end0:
	.size	base_tv_init, .Lfunc_end0-base_tv_init
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
