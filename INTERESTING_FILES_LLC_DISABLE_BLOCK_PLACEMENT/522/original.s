	.text
	.file	""
	.globl	xnn_qs8_dwconv_minmax_fp32_ukernel_up16x25__avx2_mul16_vpmovsx # -- Begin function xnn_qs8_dwconv_minmax_fp32_ukernel_up16x25__avx2_mul16_vpmovsx
	.p2align	4, 0x90
	.type	xnn_qs8_dwconv_minmax_fp32_ukernel_up16x25__avx2_mul16_vpmovsx,@function
xnn_qs8_dwconv_minmax_fp32_ukernel_up16x25__avx2_mul16_vpmovsx: # @xnn_qs8_dwconv_minmax_fp32_ukernel_up16x25__avx2_mul16_vpmovsx
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB0_4
# %bb.1:                                # %for.body.preheader
	orq	$1, %rsi
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	(%rsi), %xmm0
	addq	$16, %rsi
	incq	%rdi
	jne	.LBB0_2
# %bb.3:
	xorl	%esi, %esi
.LBB0_4:                                # %for.end
	movaps	(%rsi), %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	retq
.Lfunc_end0:
	.size	xnn_qs8_dwconv_minmax_fp32_ukernel_up16x25__avx2_mul16_vpmovsx, .Lfunc_end0-xnn_qs8_dwconv_minmax_fp32_ukernel_up16x25__avx2_mul16_vpmovsx
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
