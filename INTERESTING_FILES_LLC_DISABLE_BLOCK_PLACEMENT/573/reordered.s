	.text
	.file	""
	.globl	cholmod_l_realloc_multiple      # -- Begin function cholmod_l_realloc_multiple
	.p2align	4, 0x90
	.type	cholmod_l_realloc_multiple,@function
cholmod_l_realloc_multiple:             # @cholmod_l_realloc_multiple
# %bb.0:                                # %entry
	testb	$1, 16(%rsp)
	jne	.LBB0_6
# %bb.1:                                # %sw.epilog
	testl	%esi, %esi
	je	.LBB0_5
# %bb.2:                                # %sw.epilog
	cmpl	$2, %esi
	je	.LBB0_5
# %bb.3:                                # %sw.epilog
	cmpl	$1, %esi
	jne	.LBB0_6
# %bb.4:
	movq	8(%rsp), %rcx
.LBB0_5:                                # %common.ret.sink.split
	movq	$0, (%rcx)
.LBB0_6:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	cholmod_l_realloc_multiple, .Lfunc_end0-cholmod_l_realloc_multiple
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
