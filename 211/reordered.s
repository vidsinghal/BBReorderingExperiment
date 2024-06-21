	.text
	.file	""
	.globl	BLAS_stbsv_testgen              # -- Begin function BLAS_stbsv_testgen
	.p2align	4, 0x90
	.type	BLAS_stbsv_testgen,@function
BLAS_stbsv_testgen:                     # @BLAS_stbsv_testgen
# %bb.0:                                # %entry
	testb	$1, %sil
	je	.LBB0_2
# %bb.1:                                # %if.then20
	movsd	0, %xmm0                        # xmm0 = mem[0],zero
	.p2align	4, 0x90
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdi)
	addq	$4, %rdi
	jmp	.LBB0_2
.Lfunc_end0:
	.size	BLAS_stbsv_testgen, .Lfunc_end0-BLAS_stbsv_testgen
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
