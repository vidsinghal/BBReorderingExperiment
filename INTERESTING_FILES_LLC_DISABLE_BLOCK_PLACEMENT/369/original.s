	.text
	.file	""
	.globl	xnn_f32_vmulc_minmax_ukernel__scalar_x2 # -- Begin function xnn_f32_vmulc_minmax_ukernel__scalar_x2
	.p2align	4, 0x90
	.type	xnn_f32_vmulc_minmax_ukernel__scalar_x2,@function
xnn_f32_vmulc_minmax_ukernel__scalar_x2: # @xnn_f32_vmulc_minmax_ukernel__scalar_x2
# %bb.0:                                # %entry
	cmpq	$8, %rdi
	jb	.LBB0_8
# %bb.1:                                # %for.body.preheader
	leaq	-8(%rdi), %rax
	cmpq	$56, %rax
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
	shrq	$3, %rax
	incq	%rax
	movq	%rax, %rcx
	andq	$-8, %rcx
	leaq	(,%rcx,8), %r8
	subq	%r8, %rdi
	xorps	%xmm0, %xmm0
	mulss	(%rsi), %xmm0
	movss	%xmm0, (%rdx)
	movq	%rcx, %r8
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addq	$-8, %r8
	jne	.LBB0_4
# %bb.5:                                # %middle.block
	cmpq	%rcx, %rax
	je	.LBB0_8
.LBB0_6:                                # %for.body.preheader6
	xorps	%xmm0, %xmm0
.LBB0_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rsi), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%rdx)
	addq	$-8, %rdi
	cmpq	$7, %rdi
	ja	.LBB0_7
.LBB0_8:                                # %for.end
	retq
.Lfunc_end0:
	.size	xnn_f32_vmulc_minmax_ukernel__scalar_x2, .Lfunc_end0-xnn_f32_vmulc_minmax_ukernel__scalar_x2
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
