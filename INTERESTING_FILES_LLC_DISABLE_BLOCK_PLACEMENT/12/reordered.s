	.text
	.file	""
	.globl	xnn_f32_ppmm_minmax_ukernel_4x4__scalar # -- Begin function xnn_f32_ppmm_minmax_ukernel_4x4__scalar
	.p2align	4, 0x90
	.type	xnn_f32_ppmm_minmax_ukernel_4x4__scalar,@function
xnn_f32_ppmm_minmax_ukernel_4x4__scalar: # @xnn_f32_ppmm_minmax_ukernel_4x4__scalar
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	math_min_f32@PLT                # TAILCALL
.LBB0_1:                                # %do.body27
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_1
.Lfunc_end0:
	.size	xnn_f32_ppmm_minmax_ukernel_4x4__scalar, .Lfunc_end0-xnn_f32_ppmm_minmax_ukernel_4x4__scalar
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
