	.text
	.file	""
	.globl	xnn_qc8_dwconv_minmax_fp32_ukernel_up32x25__avx2_mul16_vpmovsx # -- Begin function xnn_qc8_dwconv_minmax_fp32_ukernel_up32x25__avx2_mul16_vpmovsx
	.p2align	4, 0x90
	.type	xnn_qc8_dwconv_minmax_fp32_ukernel_up32x25__avx2_mul16_vpmovsx,@function
xnn_qc8_dwconv_minmax_fp32_ukernel_up32x25__avx2_mul16_vpmovsx: # @xnn_qc8_dwconv_minmax_fp32_ukernel_up32x25__avx2_mul16_vpmovsx
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testq	%rdi, %rdi
	jne	.LBB0_3
# %bb.1:                                # %entry.split.us
	testb	$1, %cl
	je	.LBB0_8
.LBB0_2:                                # %do.body.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %entry.split
	movq	%rsi, %rbx
	testq	%rdx, %rdx
	jne	.LBB0_6
# %bb.4:                                # %entry.split.split
	testb	$1, %cl
	je	.LBB0_7
.LBB0_5:                                # %do.body.us2
                                        # =>This Inner Loop Header: Depth=1
	callq	_mm256_loadu_si256@PLT
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movl	$0, (%rbx)
	jmp	.LBB0_5
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	callq	_mm256_loadu_si256@PLT
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movl	$0, (%rbx)
	jmp	.LBB0_6
.LBB0_7:                                # %do.body
	callq	_mm256_loadu_si256@PLT
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movaps	16, %xmm0
	movaps	0, %xmm0
	movl	$0, (%rbx)
.LBB0_8:                                # %if.then1051
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	xnn_qc8_dwconv_minmax_fp32_ukernel_up32x25__avx2_mul16_vpmovsx, .Lfunc_end0-xnn_qc8_dwconv_minmax_fp32_ukernel_up32x25__avx2_mul16_vpmovsx
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits