	.text
	.file	""
	.globl	xnn_f32_dwconv_minmax_ukernel_up16x4__avx512f_acc2 # -- Begin function xnn_f32_dwconv_minmax_ukernel_up16x4__avx512f_acc2
	.p2align	4, 0x90
	.type	xnn_f32_dwconv_minmax_ukernel_up16x4__avx512f_acc2,@function
xnn_f32_dwconv_minmax_ukernel_up16x4__avx512f_acc2: # @xnn_f32_dwconv_minmax_ukernel_up16x4__avx512f_acc2
# %bb.0:                                # %entry
	testb	$1, %sil
	je	.LBB0_3
# %bb.1:                                # %for.body.us.preheader
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	32, %xmm0
	movaps	48, %xmm0
	movaps	(%rdi), %xmm0
	movaps	16(%rdi), %xmm0
	movaps	32(%rdi), %xmm0
	movaps	48(%rdi), %xmm0
	.p2align	4, 0x90
.LBB0_2:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	32, %xmm0
	movaps	48, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	32, %xmm0
	movaps	48, %xmm0
	jmp	.LBB0_2
.LBB0_3:                                # %for.end
	retq
.Lfunc_end0:
	.size	xnn_f32_dwconv_minmax_ukernel_up16x4__avx512f_acc2, .Lfunc_end0-xnn_f32_dwconv_minmax_ukernel_up16x4__avx512f_acc2
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
