	.text
	.file	""
	.globl	lu_build_factors                # -- Begin function lu_build_factors
	.p2align	4, 0x90
	.type	lu_build_factors,@function
lu_build_factors:                       # @lu_build_factors
# %bb.0:                                # %entry
	testb	$1, %sil
	movl	$0, (%rdi)
	.p2align	4, 0x90
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_1
.Lfunc_end0:
	.size	lu_build_factors, .Lfunc_end0-lu_build_factors
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
