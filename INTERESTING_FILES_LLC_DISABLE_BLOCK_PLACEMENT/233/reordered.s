	.text
	.file	""
	.globl	BLAS_zge_sum_mv_c_c             # -- Begin function BLAS_zge_sum_mv_c_c
	.p2align	4, 0x90
	.type	BLAS_zge_sum_mv_c_c,@function
BLAS_zge_sum_mv_c_c:                    # @BLAS_zge_sum_mv_c_c
# %bb.0:                                # %entry
	testl	%edi, %edi
	sete	%al
	orb	%dl, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.end
	movq	$0, (%rsi)
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	BLAS_zge_sum_mv_c_c, .Lfunc_end0-BLAS_zge_sum_mv_c_c
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
