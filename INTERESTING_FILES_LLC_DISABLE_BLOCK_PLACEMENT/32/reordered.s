	.text
	.file	""
	.globl	xnn_qs8_gavgpool_minmax_fp32_ukernel_7p7x__sse41_c8 # -- Begin function xnn_qs8_gavgpool_minmax_fp32_ukernel_7p7x__sse41_c8
	.p2align	4, 0x90
	.type	xnn_qs8_gavgpool_minmax_fp32_ukernel_7p7x__sse41_c8,@function
xnn_qs8_gavgpool_minmax_fp32_ukernel_7p7x__sse41_c8: # @xnn_qs8_gavgpool_minmax_fp32_ukernel_7p7x__sse41_c8
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	_mm_add_epi32@PLT               # TAILCALL
# %bb.1:                                # %for.cond55
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	_mm_add_epi16@PLT
.Lfunc_end0:
	.size	xnn_qs8_gavgpool_minmax_fp32_ukernel_7p7x__sse41_c8, .Lfunc_end0-xnn_qs8_gavgpool_minmax_fp32_ukernel_7p7x__sse41_c8
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
