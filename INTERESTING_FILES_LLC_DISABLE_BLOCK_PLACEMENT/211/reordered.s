	.text
	.file	""
	.globl	BLAS_stbsv_testgen              # -- Begin function BLAS_stbsv_testgen
	.p2align	4, 0x90
	.type	BLAS_stbsv_testgen,@function
BLAS_stbsv_testgen:                     # @BLAS_stbsv_testgen
# %bb.0:                                # %entry
	movq	0, %rax
	testq	%rdi, %rdi
	sete	%al
	testb	%al, %sil
	je	.LBB0_2
# %bb.1:                                # %if.then
	movl	$0, 0
.LBB0_2:                                # %if.end
	retq
.Lfunc_end0:
	.size	BLAS_stbsv_testgen, .Lfunc_end0-BLAS_stbsv_testgen
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
