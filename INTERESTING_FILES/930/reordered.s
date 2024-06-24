	.text
	.file	""
	.globl	xnn_f16_vaddc_minmax_ukernel__f16c_x8 # -- Begin function xnn_f16_vaddc_minmax_ukernel__f16c_x8
	.p2align	4, 0x90
	.type	xnn_f16_vaddc_minmax_ukernel__f16c_x8,@function
xnn_f16_vaddc_minmax_ukernel__f16c_x8:  # @xnn_f16_vaddc_minmax_ukernel__f16c_x8
# %bb.0:                                # %entry
	movaps	0, %xmm0
	movaps	16, %xmm0
	testb	$1, %dil
	je	.LBB0_2
# %bb.1:                                # %if.then35
	movw	$0, (%rsi)
.LBB0_2:                                # %if.end39
	retq
.Lfunc_end0:
	.size	xnn_f16_vaddc_minmax_ukernel__f16c_x8, .Lfunc_end0-xnn_f16_vaddc_minmax_ukernel__f16c_x8
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
