	.text
	.file	""
	.globl	xnn_f32_dwconv_ukernel_up2x25__scalar_acc2 # -- Begin function xnn_f32_dwconv_ukernel_up2x25__scalar_acc2
	.p2align	4, 0x90
	.type	xnn_f32_dwconv_ukernel_up2x25__scalar_acc2,@function
xnn_f32_dwconv_ukernel_up2x25__scalar_acc2: # @xnn_f32_dwconv_ukernel_up2x25__scalar_acc2
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %common.ret
	retq
.LBB0_2:                                # %for.body
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorps	%xmm0, %xmm0
	callq	math_muladd_f32@PLT
	xorps	%xmm0, %xmm0
	callq	math_muladd_f32@PLT
	xorps	%xmm0, %xmm0
	callq	math_muladd_f32@PLT
	xorps	%xmm0, %xmm0
	callq	math_muladd_f32@PLT
	xorps	%xmm0, %xmm0
	callq	math_muladd_f32@PLT
	xorps	%xmm0, %xmm0
	callq	math_muladd_f32@PLT
	xorps	%xmm0, %xmm0
	callq	math_muladd_f32@PLT
	xorps	%xmm0, %xmm0
	callq	math_muladd_f32@PLT
	xorps	%xmm0, %xmm0
	callq	math_muladd_f32@PLT
	xorps	%xmm0, %xmm0
	callq	math_muladd_f32@PLT
	xorps	%xmm0, %xmm0
	callq	math_muladd_f32@PLT
	xorps	%xmm0, %xmm0
	callq	math_muladd_f32@PLT
	xorps	%xmm0, %xmm0
	callq	math_muladd_f32@PLT
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	xnn_f32_dwconv_ukernel_up2x25__scalar_acc2, .Lfunc_end0-xnn_f32_dwconv_ukernel_up2x25__scalar_acc2
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
