	.text
	.file	""
	.globl	xnn_f32_qu8_vcvt_ukernel__scalar_fmagic_x2 # -- Begin function xnn_f32_qu8_vcvt_ukernel__scalar_fmagic_x2
	.p2align	4, 0x90
	.type	xnn_f32_qu8_vcvt_ukernel__scalar_fmagic_x2,@function
xnn_f32_qu8_vcvt_ukernel__scalar_fmagic_x2: # @xnn_f32_qu8_vcvt_ukernel__scalar_fmagic_x2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movss	(%rsi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	(%rdi), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	testb	$1, %dl
	je	.LBB0_3
# %bb.1:                                # %for.body.us.preheader
	movss	%xmm1, 4(%rsp)                  # 4-byte Spill
	movss	%xmm0, (%rsp)                   # 4-byte Spill
.LBB0_2:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movss	4(%rsp), %xmm1                  # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	callq	math_max_f32@PLT
	movss	(%rsp), %xmm0                   # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_2
.LBB0_3:                                # %for.end
	testb	$1, %cl
	je	.LBB0_5
# %bb.4:                                # %if.end
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.LBB0_5:                                # %if.then
	.cfi_def_cfa_offset 16
	xorps	%xmm2, %xmm2
	mulss	%xmm2, %xmm0
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	math_max_f32@PLT                # TAILCALL
.Lfunc_end0:
	.size	xnn_f32_qu8_vcvt_ukernel__scalar_fmagic_x2, .Lfunc_end0-xnn_f32_qu8_vcvt_ukernel__scalar_fmagic_x2
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
