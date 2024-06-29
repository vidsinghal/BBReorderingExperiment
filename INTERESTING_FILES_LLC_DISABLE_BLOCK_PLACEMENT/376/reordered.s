	.text
	.file	""
	.globl	xnn_f32_dwconv_minmax_ukernel_up8x3__fma3 # -- Begin function xnn_f32_dwconv_minmax_ukernel_up8x3__fma3
	.p2align	4, 0x90
	.type	xnn_f32_dwconv_minmax_ukernel_up8x3__fma3,@function
xnn_f32_dwconv_minmax_ukernel_up8x3__fma3: # @xnn_f32_dwconv_minmax_ukernel_up8x3__fma3
	.cfi_startproc
# %bb.0:                                # %for.end.peel
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
.LBB0_1:                                # %for.end.peel
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	callq	_mm256_loadu_si256@PLT
	testq	%rbx, %rbx
	je	.LBB0_1
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	callq	_mm256_loadu_ps@PLT
	jmp	.LBB0_2
.Lfunc_end0:
	.size	xnn_f32_dwconv_minmax_ukernel_up8x3__fma3, .Lfunc_end0-xnn_f32_dwconv_minmax_ukernel_up8x3__fma3
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
