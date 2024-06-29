	.text
	.file	""
	.globl	xnn_qc8_gemm_minmax_fp32_ukernel_2x4c8__avx_ld128 # -- Begin function xnn_qc8_gemm_minmax_fp32_ukernel_2x4c8__avx_ld128
	.p2align	4, 0x90
	.type	xnn_qc8_gemm_minmax_fp32_ukernel_2x4c8__avx_ld128,@function
xnn_qc8_gemm_minmax_fp32_ukernel_2x4c8__avx_ld128: # @xnn_qc8_gemm_minmax_fp32_ukernel_2x4c8__avx_ld128
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	round_up_po2@PLT
.LBB0_1:                                # %entry
                                        # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB0_3
.LBB0_2:                                # %while.body.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %while.end
                                        #   in Loop: Header=BB0_1 Depth=1
	callq	_mm_hadd_epi32@PLT
	jmp	.LBB0_1
.Lfunc_end0:
	.size	xnn_qc8_gemm_minmax_fp32_ukernel_2x4c8__avx_ld128, .Lfunc_end0-xnn_qc8_gemm_minmax_fp32_ukernel_2x4c8__avx_ld128
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
