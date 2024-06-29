	.text
	.file	""
	.globl	xnn_qs8_vaddc_minmax_ukernel__avx2_mul32_ld64_x8 # -- Begin function xnn_qs8_vaddc_minmax_ukernel__avx2_mul32_ld64_x8
	.p2align	4, 0x90
	.type	xnn_qs8_vaddc_minmax_ukernel__avx2_mul32_ld64_x8,@function
xnn_qs8_vaddc_minmax_ukernel__avx2_mul32_ld64_x8: # @xnn_qs8_vaddc_minmax_ukernel__avx2_mul32_ld64_x8
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_2
# %bb.1:                                # %if.then54
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rsi)
.LBB0_2:                                # %if.end59
	retq
.Lfunc_end0:
	.size	xnn_qs8_vaddc_minmax_ukernel__avx2_mul32_ld64_x8, .Lfunc_end0-xnn_qs8_vaddc_minmax_ukernel__avx2_mul32_ld64_x8
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
