	.text
	.file	""
	.globl	BLAS_chemm_c_s_x                # -- Begin function BLAS_chemm_c_s_x
	.p2align	4, 0x90
	.type	BLAS_chemm_c_s_x,@function
BLAS_chemm_c_s_x:                       # @BLAS_chemm_c_s_x
# %bb.0:                                # %entry
	testl	%edi, %edi
	setle	%al
	testl	%esi, %esi
	setns	%cl
	testb	%cl, %al
	je	.LBB0_2
# %bb.1:                                # %if.end14
	movl	$0, (%rdx)
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	BLAS_chemm_c_s_x, .Lfunc_end0-BLAS_chemm_c_s_x
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
