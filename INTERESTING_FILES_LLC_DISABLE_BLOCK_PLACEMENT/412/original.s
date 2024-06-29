	.text
	.file	""
	.globl	xnn_f32_vdiv_ukernel__scalar_x1 # -- Begin function xnn_f32_vdiv_ukernel__scalar_x1
	.p2align	4, 0x90
	.type	xnn_f32_vdiv_ukernel__scalar_x1,@function
xnn_f32_vdiv_ukernel__scalar_x1:        # @xnn_f32_vdiv_ukernel__scalar_x1
# %bb.0:                                # %entry
	cmpq	$4, %rdi
	jb	.LBB0_7
# %bb.1:                                # %for.body.preheader
	leaq	-4(%rdi), %rax
	cmpq	$28, %rax
	jb	.LBB0_6
# %bb.2:                                # %vector.memcheck
	leaq	4(%rdx), %rcx
	leaq	4(%rsi), %r8
	cmpq	%rdx, %r8
	seta	%r8b
	cmpq	%rsi, %rcx
	seta	%cl
	testb	%cl, %r8b
	jne	.LBB0_6
# %bb.3:                                # %vector.ph
	shrq	$2, %rax
	incq	%rax
	movq	%rax, %rcx
	andq	$-8, %rcx
	leaq	(,%rcx,4), %r8
	subq	%r8, %rdi
	movss	(%rsi), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%rdx)
	movq	%rcx, %r8
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addq	$-8, %r8
	jne	.LBB0_4
# %bb.5:                                # %middle.block
	cmpq	%rcx, %rax
	je	.LBB0_7
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rsi), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%rdx)
	addq	$-4, %rdi
	cmpq	$3, %rdi
	ja	.LBB0_6
.LBB0_7:                                # %for.end
	retq
.Lfunc_end0:
	.size	xnn_f32_vdiv_ukernel__scalar_x1, .Lfunc_end0-xnn_f32_vdiv_ukernel__scalar_x1
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
