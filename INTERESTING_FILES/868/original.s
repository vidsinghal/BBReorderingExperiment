	.text
	.file	""
	.globl	xnn_qs8_igemm_minmax_fp32_ukernel_4x4c2s4__avx_ld128 # -- Begin function xnn_qs8_igemm_minmax_fp32_ukernel_4x4c2s4__avx_ld128
	.p2align	4, 0x90
	.type	xnn_qs8_igemm_minmax_fp32_ukernel_4x4c2s4__avx_ld128,@function
xnn_qs8_igemm_minmax_fp32_ukernel_4x4c2s4__avx_ld128: # @xnn_qs8_igemm_minmax_fp32_ukernel_4x4c2s4__avx_ld128
# %bb.0:                                # %entry
	xorl	%eax, %eax
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                # %do.body25.loopexit
                                        #   in Loop: Header=BB0_3 Depth=1
	addq	$32, %rax
.LBB0_3:                                # %do.body25
                                        # =>This Inner Loop Header: Depth=1
	testq	%rdi, %rdi
	movq	(%rax), %rcx
	movaps	(%rcx), %xmm0
	je	.LBB0_2
# %bb.1:                                # %do.body25.loopexit.loopexit
                                        #   in Loop: Header=BB0_3 Depth=1
	movaps	(%rcx), %xmm0
	jmp	.LBB0_2
.Lfunc_end0:
	.size	xnn_qs8_igemm_minmax_fp32_ukernel_4x4c2s4__avx_ld128, .Lfunc_end0-xnn_qs8_igemm_minmax_fp32_ukernel_4x4c2s4__avx_ld128
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
