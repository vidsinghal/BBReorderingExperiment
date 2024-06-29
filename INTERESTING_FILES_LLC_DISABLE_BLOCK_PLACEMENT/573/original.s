	.text
	.file	""
	.globl	cholmod_l_realloc_multiple      # -- Begin function cholmod_l_realloc_multiple
	.p2align	4, 0x90
	.type	cholmod_l_realloc_multiple,@function
cholmod_l_realloc_multiple:             # @cholmod_l_realloc_multiple
# %bb.0:                                # %entry
	testb	$1, 16(%rsp)
	jne	.LBB0_3
# %bb.1:                                # %sw.epilog
	testl	%esi, %esi
	jne	.LBB0_4
.LBB0_2:                                # %common.ret.sink.split
	movq	$0, (%rcx)
.LBB0_3:                                # %common.ret
	xorl	%eax, %eax
	retq
.LBB0_4:                                # %sw.epilog
	cmpl	$1, %esi
	jne	.LBB0_6
# %bb.5:
	movq	8(%rsp), %rcx
	jmp	.LBB0_2
.LBB0_6:                                # %sw.epilog
	cmpl	$2, %esi
	je	.LBB0_2
	jmp	.LBB0_3
.Lfunc_end0:
	.size	cholmod_l_realloc_multiple, .Lfunc_end0-cholmod_l_realloc_multiple
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
