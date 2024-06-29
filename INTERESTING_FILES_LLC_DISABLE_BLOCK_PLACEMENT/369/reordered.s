	.text
	.file	""
	.globl	xnn_f32_vmulc_minmax_ukernel__scalar_x2 # -- Begin function xnn_f32_vmulc_minmax_ukernel__scalar_x2
	.p2align	4, 0x90
	.type	xnn_f32_vmulc_minmax_ukernel__scalar_x2,@function
xnn_f32_vmulc_minmax_ukernel__scalar_x2: # @xnn_f32_vmulc_minmax_ukernel__scalar_x2
# %bb.0:                                # %entry
	cmpq	$7, %rdi
	ja	.LBB0_5
.LBB0_1:                                # %for.end
	retq
.LBB0_2:                                # %vector.ph
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
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addq	$-8, %r8
	jne	.LBB0_3
# %bb.4:                                # %middle.block
	cmpq	%rcx, %rax
	je	.LBB0_1
	jmp	.LBB0_7
.LBB0_5:                                # %for.body.preheader
	leaq	-8(%rdi), %rax
	cmpq	$56, %rax
	jb	.LBB0_7
# %bb.6:                                # %vector.memcheck
	leaq	4(%rdx), %rcx
	leaq	4(%rsi), %r8
	cmpq	%rdx, %r8
	setbe	%r8b
	cmpq	%rsi, %rcx
	setbe	%cl
	orb	%r8b, %cl
	jne	.LBB0_2
.LBB0_7:                                # %for.body.preheader6
	xorps	%xmm0, %xmm0
.LBB0_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rsi), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movss	%xmm1, (%rdx)
	addq	$-8, %rdi
	cmpq	$7, %rdi
	ja	.LBB0_8
	jmp	.LBB0_1
.Lfunc_end0:
	.size	xnn_f32_vmulc_minmax_ukernel__scalar_x2, .Lfunc_end0-xnn_f32_vmulc_minmax_ukernel__scalar_x2
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
