	.text
	.file	""
	.globl	xnn_f32_velu_ukernel__avx2_rr1_lut16_p3_gather_x24 # -- Begin function xnn_f32_velu_ukernel__avx2_rr1_lut16_p3_gather_x24
	.p2align	4, 0x90
	.type	xnn_f32_velu_ukernel__avx2_rr1_lut16_p3_gather_x24,@function
xnn_f32_velu_ukernel__avx2_rr1_lut16_p3_gather_x24: # @xnn_f32_velu_ukernel__avx2_rr1_lut16_p3_gather_x24
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testb	$1, %dil
	je	.LBB0_2
# %bb.1:                                # %for.body
	movaps	0, %xmm0
	movaps	16, %xmm0
.LBB0_2:                                # %for.cond90
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	callq	_mm256_loadu_ps@PLT
	jmp	.LBB0_2
.Lfunc_end0:
	.size	xnn_f32_velu_ukernel__avx2_rr1_lut16_p3_gather_x24, .Lfunc_end0-xnn_f32_velu_ukernel__avx2_rr1_lut16_p3_gather_x24
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
