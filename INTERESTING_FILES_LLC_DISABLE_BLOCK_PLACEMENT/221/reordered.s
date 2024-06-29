	.text
	.file	""
	.globl	xnn_qu8_dwconv_minmax_fp32_ukernel_up8x25__avx2_mul32 # -- Begin function xnn_qu8_dwconv_minmax_fp32_ukernel_up8x25__avx2_mul32
	.p2align	4, 0x90
	.type	xnn_qu8_dwconv_minmax_fp32_ukernel_up8x25__avx2_mul32,@function
xnn_qu8_dwconv_minmax_fp32_ukernel_up8x25__avx2_mul32: # @xnn_qu8_dwconv_minmax_fp32_ukernel_up8x25__avx2_mul32
# %bb.0:                                # %entry
	testb	$1, %dl
	jne	.LBB0_4
# %bb.1:                                # %entry.split
	testb	$1, %cl
	je	.LBB0_3
.LBB0_2:                                # %do.body.us1
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_3
.LBB0_4:                                # %entry.split.us
	testb	$1, %cl
	je	.LBB0_6
.LBB0_5:                                # %do.body.us.us
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rsi)
	movq	$0, (%rdi)
	jmp	.LBB0_5
.LBB0_6:                                # %do.body.us
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rsi)
	movq	$0, (%rdi)
	jmp	.LBB0_6
.Lfunc_end0:
	.size	xnn_qu8_dwconv_minmax_fp32_ukernel_up8x25__avx2_mul32, .Lfunc_end0-xnn_qu8_dwconv_minmax_fp32_ukernel_up8x25__avx2_mul32
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
