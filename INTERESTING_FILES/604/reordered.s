	.text
	.file	""
	.globl	BLAS_zhbmv_z_c_x                # -- Begin function BLAS_zhbmv_z_c_x
	.p2align	4, 0x90
	.type	BLAS_zhbmv_z_c_x,@function
BLAS_zhbmv_z_c_x:                       # @BLAS_zhbmv_z_c_x
# %bb.0:                                # %entry
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	setp	%al
	setne	%cl
	orb	%al, %cl
	testb	%sil, %cl
	jne	.LBB0_2
# %bb.1:                                # %if.end11
	movq	$0, (%rdi)
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	BLAS_zhbmv_z_c_x, .Lfunc_end0-BLAS_zhbmv_z_c_x
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
