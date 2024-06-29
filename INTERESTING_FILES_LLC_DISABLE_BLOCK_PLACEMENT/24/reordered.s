	.text
	.file	""
	.globl	FLA_Gemm_internal               # -- Begin function FLA_Gemm_internal
	.p2align	4, 0x90
	.type	FLA_Gemm_internal,@function
FLA_Gemm_internal:                      # @FLA_Gemm_internal
# %bb.0:                                # %entry
	testb	$1, %sil
	jne	.LBB0_5
.LBB0_1:                                # %if.else
	testb	$1, %dil
	jne	.LBB0_4
.LBB0_2:                                # %if.else21
	testb	$1, %sil
	jne	.LBB0_6
# %bb.3:                                # %if.end31
	xorl	%eax, %eax
	retq
.LBB0_4:                                # %land.lhs.true14
	movl	0, %eax
	jmp	.LBB0_2
.LBB0_5:                                # %land.lhs.true
	movl	0, %eax
	jmp	.LBB0_1
.LBB0_6:                                # %land.lhs.true24
	movl	0, %eax
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	FLA_Gemm_internal, .Lfunc_end0-FLA_Gemm_internal
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
