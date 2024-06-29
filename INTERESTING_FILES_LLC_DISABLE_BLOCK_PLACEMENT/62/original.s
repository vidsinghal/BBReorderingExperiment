	.text
	.file	""
	.globl	xnn_f32_dwconv_minmax_ukernel_up8x9__avx # -- Begin function xnn_f32_dwconv_minmax_ukernel_up8x9__avx
	.p2align	4, 0x90
	.type	xnn_f32_dwconv_minmax_ukernel_up8x9__avx,@function
xnn_f32_dwconv_minmax_ukernel_up8x9__avx: # @xnn_f32_dwconv_minmax_ukernel_up8x9__avx
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testb	$1, %sil
	je	.LBB0_3
# %bb.1:                                # %for.body.us.preheader
	movq	%rdi, %rbx
	callq	_mm256_load_ps@PLT
	movaps	(%rbx), %xmm0
	movaps	16(%rbx), %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
.LBB0_2:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	callq	_mm256_load_ps@PLT
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	jmp	.LBB0_2
.LBB0_3:                                # %for.end
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	xnn_f32_dwconv_minmax_ukernel_up8x9__avx, .Lfunc_end0-xnn_f32_dwconv_minmax_ukernel_up8x9__avx
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
