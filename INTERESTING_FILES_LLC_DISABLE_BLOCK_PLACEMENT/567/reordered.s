	.text
	.file	""
	.globl	xnn_qs8_igemm_minmax_fp32_ukernel_2x4__scalar_imagic # -- Begin function xnn_qs8_igemm_minmax_fp32_ukernel_2x4__scalar_imagic
	.p2align	4, 0x90
	.type	xnn_qs8_igemm_minmax_fp32_ukernel_2x4__scalar_imagic,@function
xnn_qs8_igemm_minmax_fp32_ukernel_2x4__scalar_imagic: # @xnn_qs8_igemm_minmax_fp32_ukernel_2x4__scalar_imagic
# %bb.0:                                # %entry
	movl	$1, %eax
	subl	%edi, %eax
	andl	$7, %eax
	leaq	6(%rdi), %rcx
	movq	%rax, %r8
	negq	%r8
.LBB0_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
                                        #     Child Loop BB0_7 Depth 2
	movzbl	(%rsi), %r9d
	movq	%rdi, %r10
	testq	%rax, %rax
	je	.LBB0_5
# %bb.2:                                # %do.body31.prol.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%r11d, %r11d
.LBB0_3:                                # %do.body31.prol
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decq	%r11
	cmpq	%r11, %r8
	jne	.LBB0_3
# %bb.4:                                # %do.body31.prol.loopexit.loopexit
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%rdi, %r10
	subq	%r11, %r10
.LBB0_5:                                # %do.body31.prol.loopexit
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpq	$7, %rcx
	jb	.LBB0_8
# %bb.6:                                # %do.body31.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	decq	%r10
.LBB0_7:                                # %do.body31
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$8, %r10
	jne	.LBB0_7
.LBB0_8:                                # %do.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	%r9b, (%rdx)
	jmp	.LBB0_1
.Lfunc_end0:
	.size	xnn_qs8_igemm_minmax_fp32_ukernel_2x4__scalar_imagic, .Lfunc_end0-xnn_qs8_igemm_minmax_fp32_ukernel_2x4__scalar_imagic
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
