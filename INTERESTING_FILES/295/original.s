	.text
	.file	""
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function xnn_f32_dwconv_ukernel_up2x25__scalar_acc2
.LCPI0_0:
	.long	0x3f800000                      # float 1
	.text
	.globl	xnn_f32_dwconv_ukernel_up2x25__scalar_acc2
	.p2align	4, 0x90
	.type	xnn_f32_dwconv_ukernel_up2x25__scalar_acc2,@function
xnn_f32_dwconv_ukernel_up2x25__scalar_acc2: # @xnn_f32_dwconv_ukernel_up2x25__scalar_acc2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testb	$1, %dil
	je	.LBB0_2
# %bb.1:                                # %for.body
	xorps	%xmm0, %xmm0
	callq	math_muladd_f32@PLT
	.p2align	4, 0x90
.LBB0_2:                                # %for.cond473
                                        # =>This Inner Loop Header: Depth=1
	movss	.LCPI0_0(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0,0.0E+0,0.0E+0]
	callq	math_muladd_f32@PLT
	jmp	.LBB0_2
.Lfunc_end0:
	.size	xnn_f32_dwconv_ukernel_up2x25__scalar_acc2, .Lfunc_end0-xnn_f32_dwconv_ukernel_up2x25__scalar_acc2
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
