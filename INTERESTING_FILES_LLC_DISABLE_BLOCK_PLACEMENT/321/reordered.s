	.text
	.file	""
	.globl	xnn_f32_vdiv_minmax_ukernel__scalar_x4 # -- Begin function xnn_f32_vdiv_minmax_ukernel__scalar_x4
	.p2align	4, 0x90
	.type	xnn_f32_vdiv_minmax_ukernel__scalar_x4,@function
xnn_f32_vdiv_minmax_ukernel__scalar_x4: # @xnn_f32_vdiv_minmax_ukernel__scalar_x4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	testb	$1, %dil
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
	je	.LBB0_2
.LBB0_1:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	math_min_f32@PLT
	jmp	.LBB0_1
.LBB0_2:                                # %do.body.preheader
	movl	%esi, %ebx
	callq	math_min_f32@PLT
	testb	$1, %bl
	jne	.LBB0_4
.LBB0_3:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	math_min_f32@PLT
	jmp	.LBB0_3
.LBB0_4:                                # %if.end
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	xnn_f32_vdiv_minmax_ukernel__scalar_x4, .Lfunc_end0-xnn_f32_vdiv_minmax_ukernel__scalar_x4
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
