	.text
	.file	""
	.globl	xnn_f32_gemm_minmax_ukernel_3x16__avx_broadcast # -- Begin function xnn_f32_gemm_minmax_ukernel_3x16__avx_broadcast
	.p2align	4, 0x90
	.type	xnn_f32_gemm_minmax_ukernel_3x16__avx_broadcast,@function
xnn_f32_gemm_minmax_ukernel_3x16__avx_broadcast: # @xnn_f32_gemm_minmax_ukernel_3x16__avx_broadcast
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_2
# %bb.1:                                # %if.then78
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 16(%rsi)
	movaps	%xmm0, (%rsi)
.LBB0_2:                                # %if.end109
	retq
.Lfunc_end0:
	.size	xnn_f32_gemm_minmax_ukernel_3x16__avx_broadcast, .Lfunc_end0-xnn_f32_gemm_minmax_ukernel_3x16__avx_broadcast
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
