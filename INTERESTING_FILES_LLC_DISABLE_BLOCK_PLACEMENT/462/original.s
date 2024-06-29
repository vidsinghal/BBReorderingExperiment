	.text
	.file	""
	.globl	xnn_qc8_igemm_minmax_fp32_ukernel_1x4c2__avx_ld64 # -- Begin function xnn_qc8_igemm_minmax_fp32_ukernel_1x4c2__avx_ld64
	.p2align	4, 0x90
	.type	xnn_qc8_igemm_minmax_fp32_ukernel_1x4c2__avx_ld64,@function
xnn_qc8_igemm_minmax_fp32_ukernel_1x4c2__avx_ld64: # @xnn_qc8_igemm_minmax_fp32_ukernel_1x4c2__avx_ld64
# %bb.0:                                # %entry
	testb	$1, %dl
	je	.LBB0_5
.LBB0_1:                                # %do.body2.us
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$2, %rdi
	jb	.LBB0_1
# %bb.2:                                # %while.cond.us.preheader
	cmpq	$2, %rsi
	setae	%cl
	cmpq	$2, %rdi
	setae	%al
	orb	%cl, %al
.LBB0_3:                                # %while.cond.us
                                        # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	jne	.LBB0_3
.LBB0_4:                                # %infloop
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_4
.LBB0_5:                                # %entry.split
	testb	$1, %cl
	je	.LBB0_9
.LBB0_6:                                # %do.body2.us1
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	cmpq	$2, %rdi
	jb	.LBB0_8
.LBB0_7:                                # %while.cond.us2
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$1, %rsi
	ja	.LBB0_7
.LBB0_8:                                # %while.end.us5
                                        #   in Loop: Header=BB0_6 Depth=1
	movaps	0, %xmm0
	movaps	0, %xmm0
	jmp	.LBB0_6
.LBB0_9:                                # %do.body2
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	cmpq	$2, %rdi
	jb	.LBB0_11
.LBB0_10:                               # %while.cond
                                        #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpq	$1, %rsi
	ja	.LBB0_10
.LBB0_11:                               # %while.end
                                        #   in Loop: Header=BB0_9 Depth=1
	movaps	0, %xmm0
	jmp	.LBB0_9
.Lfunc_end0:
	.size	xnn_qc8_igemm_minmax_fp32_ukernel_1x4c2__avx_ld64, .Lfunc_end0-xnn_qc8_igemm_minmax_fp32_ukernel_1x4c2__avx_ld64
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
