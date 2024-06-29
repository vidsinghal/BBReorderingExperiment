	.text
	.file	""
	.globl	BLAS_zsymv2_z_c_x               # -- Begin function BLAS_zsymv2_z_c_x
	.p2align	4, 0x90
	.type	BLAS_zsymv2_z_c_x,@function
BLAS_zsymv2_z_c_x:                      # @BLAS_zsymv2_z_c_x
# %bb.0:                                # %entry
                                        # kill: def $edi killed $edi def $rdi
	leal	-212(%rdi), %eax
	cmpl	$2, %eax
	jb	.LBB0_2
# %bb.1:                                # %entry
	testl	%edi, %edi
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	BLAS_zsymv2_z_c_x, .Lfunc_end0-BLAS_zsymv2_z_c_x
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
