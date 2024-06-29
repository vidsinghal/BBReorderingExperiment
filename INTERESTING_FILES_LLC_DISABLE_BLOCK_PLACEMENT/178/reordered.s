	.text
	.file	""
	.globl	xnn_qs8_gemm_minmax_fp32_ukernel_2x4c2s4__sse2_ld128 # -- Begin function xnn_qs8_gemm_minmax_fp32_ukernel_2x4c2s4__sse2_ld128
	.p2align	4, 0x90
	.type	xnn_qs8_gemm_minmax_fp32_ukernel_2x4c2s4__sse2_ld128,@function
xnn_qs8_gemm_minmax_fp32_ukernel_2x4c2s4__sse2_ld128: # @xnn_qs8_gemm_minmax_fp32_ukernel_2x4c2s4__sse2_ld128
# %bb.0:                                # %entry
	xorl	%eax, %eax
.LBB0_1:                                # %do.body4
                                        # =>This Inner Loop Header: Depth=1
	testq	%rsi, %rsi
	jne	.LBB0_1
# %bb.2:                                # %do.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, (%rax)
	movq	%rdi, %rax
	jmp	.LBB0_1
.Lfunc_end0:
	.size	xnn_qs8_gemm_minmax_fp32_ukernel_2x4c2s4__sse2_ld128, .Lfunc_end0-xnn_qs8_gemm_minmax_fp32_ukernel_2x4c2s4__sse2_ld128
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
