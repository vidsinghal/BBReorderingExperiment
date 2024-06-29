	.text
	.file	""
	.globl	FLA_Gemm_internal               # -- Begin function FLA_Gemm_internal
	.p2align	4, 0x90
	.type	FLA_Gemm_internal,@function
FLA_Gemm_internal:                      # @FLA_Gemm_internal
# %bb.0:                                # %entry
	testb	$1, %sil
	je	.LBB0_2
# %bb.1:                                # %land.lhs.true
	movl	0, %eax
.LBB0_2:                                # %if.else
	testb	$1, %dil
	je	.LBB0_4
# %bb.3:                                # %land.lhs.true14
	movl	0, %eax
.LBB0_4:                                # %if.else21
	testb	$1, %sil
	je	.LBB0_6
# %bb.5:                                # %land.lhs.true24
	movl	0, %eax
.LBB0_6:                                # %if.end31
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	FLA_Gemm_internal, .Lfunc_end0-FLA_Gemm_internal
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
