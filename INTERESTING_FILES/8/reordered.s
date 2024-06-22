	.text
	.file	""
	.globl	bli_strmv_unf_var2              # -- Begin function bli_strmv_unf_var2
	.p2align	4, 0x90
	.type	bli_strmv_unf_var2,@function
bli_strmv_unf_var2:                     # @bli_strmv_unf_var2
# %bb.0:                                # %entry
	andl	%esi, %edi
	testb	$1, %dil
	je	.LBB0_2
# %bb.1:                                # %for.body
	movq	0, %rax
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	bli_strmv_unf_var2, .Lfunc_end0-bli_strmv_unf_var2
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
