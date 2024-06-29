	.text
	.file	""
	.globl	xnn_f32_vsub_relu_ukernel__scalar_x4 # -- Begin function xnn_f32_vsub_relu_ukernel__scalar_x4
	.p2align	4, 0x90
	.type	xnn_f32_vsub_relu_ukernel__scalar_x4,@function
xnn_f32_vsub_relu_ukernel__scalar_x4:   # @xnn_f32_vsub_relu_ukernel__scalar_x4
# %bb.0:                                # %entry
	cmpq	$2, %rdi
	jb	.LBB0_3
# %bb.1:                                # %for.body.lr.ph
	cmpq	$2, %rsi
	jb	.LBB0_3
.LBB0_2:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_3
.Lfunc_end0:
	.size	xnn_f32_vsub_relu_ukernel__scalar_x4, .Lfunc_end0-xnn_f32_vsub_relu_ukernel__scalar_x4
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
