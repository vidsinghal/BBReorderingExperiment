	.text
	.file	""
	.globl	bli_dscalv_zen2_ref             # -- Begin function bli_dscalv_zen2_ref
	.p2align	4, 0x90
	.type	bli_dscalv_zen2_ref,@function
bli_dscalv_zen2_ref:                    # @bli_dscalv_zen2_ref
# %bb.0:                                # %entry
	notb	%dl
	testq	%rdi, %rdi
	setle	%al
	orb	%dl, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %omp.inner.for.body
	movq	$0, (%rsi)
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	bli_dscalv_zen2_ref, .Lfunc_end0-bli_dscalv_zen2_ref
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
