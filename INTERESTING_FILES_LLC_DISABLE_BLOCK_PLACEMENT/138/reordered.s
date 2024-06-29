	.text
	.file	""
	.globl	xnn_qu8_dwconv_minmax_fp32_ukernel_up1x9__scalar_lrintf # -- Begin function xnn_qu8_dwconv_minmax_fp32_ukernel_up1x9__scalar_lrintf
	.p2align	4, 0x90
	.type	xnn_qu8_dwconv_minmax_fp32_ukernel_up1x9__scalar_lrintf,@function
xnn_qu8_dwconv_minmax_fp32_ukernel_up1x9__scalar_lrintf: # @xnn_qu8_dwconv_minmax_fp32_ukernel_up1x9__scalar_lrintf
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movq	%rdi, %r14
.LBB0_1:                                # %do.body99
                                        # =>This Inner Loop Header: Depth=1
	callq	math_max_f32@PLT
	incq	%r14
	jne	.LBB0_1
# %bb.2:                                # %do.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%rbx, %r14
	jmp	.LBB0_1
.Lfunc_end0:
	.size	xnn_qu8_dwconv_minmax_fp32_ukernel_up1x9__scalar_lrintf, .Lfunc_end0-xnn_qu8_dwconv_minmax_fp32_ukernel_up1x9__scalar_lrintf
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
