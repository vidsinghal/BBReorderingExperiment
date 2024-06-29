	.text
	.file	""
	.globl	xnn_qu8_dwconv_minmax_fp32_ukernel_up1x25__scalar_imagic # -- Begin function xnn_qu8_dwconv_minmax_fp32_ukernel_up1x25__scalar_imagic
	.p2align	4, 0x90
	.type	xnn_qu8_dwconv_minmax_fp32_ukernel_up1x25__scalar_imagic,@function
xnn_qu8_dwconv_minmax_fp32_ukernel_up1x25__scalar_imagic: # @xnn_qu8_dwconv_minmax_fp32_ukernel_up1x25__scalar_imagic
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
.LBB0_1:                                # %do.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	xorl	%r15d, %r15d
.LBB0_2:                                # %do.body291
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rbx), %eax
	orb	(%r14), %al
	movzbl	%al, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	callq	fp32_to_bits@PLT
	decq	%r15
	jne	.LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$1, %r14d
	jmp	.LBB0_1
.Lfunc_end0:
	.size	xnn_qu8_dwconv_minmax_fp32_ukernel_up1x25__scalar_imagic, .Lfunc_end0-xnn_qu8_dwconv_minmax_fp32_ukernel_up1x25__scalar_imagic
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
