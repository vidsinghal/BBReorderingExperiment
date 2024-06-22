	.text
	.file	""
	.globl	BLAS_cgemm_c_s                  # -- Begin function BLAS_cgemm_c_s
	.p2align	4, 0x90
	.type	BLAS_cgemm_c_s,@function
BLAS_cgemm_c_s:                         # @BLAS_cgemm_c_s
# %bb.0:                                # %entry
	xorb	$1, %dl
	testl	%edi, %edi
	setne	%al
	testb	%dl, %al
	je	.LBB0_2
# %bb.1:                                # %lor.lhs.false58
	movl	$0, (%rsi)
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	BLAS_cgemm_c_s, .Lfunc_end0-BLAS_cgemm_c_s
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
