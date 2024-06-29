	.text
	.file	""
	.globl	xnn_f32_vmul_relu_ukernel__scalar_x8 # -- Begin function xnn_f32_vmul_relu_ukernel__scalar_x8
	.p2align	4, 0x90
	.type	xnn_f32_vmul_relu_ukernel__scalar_x8,@function
xnn_f32_vmul_relu_ukernel__scalar_x8:   # @xnn_f32_vmul_relu_ukernel__scalar_x8
# %bb.0:                                # %entry
	cmpq	$32, %rdi
	jb	.LBB0_10
# %bb.1:                                # %for.body.preheader
	leaq	-32(%rdi), %rax
	cmpq	$480, %rax                      # imm = 0x1E0
	jb	.LBB0_8
# %bb.2:                                # %vector.memcheck
	pushq	%rbp
	pushq	%r14
	pushq	%rbx
	leaq	4(%rsi), %r9
	leaq	4(%rdx), %r11
	leaq	4(%rcx), %rbx
	cmpq	%rsi, %r11
	seta	%bpl
	cmpq	%rdx, %r9
	seta	%r14b
	cmpq	%rsi, %rbx
	seta	%r8b
	cmpq	%rcx, %r9
	seta	%r10b
	cmpq	%rdx, %rbx
	seta	%r9b
	cmpq	%rcx, %r11
	seta	%r11b
	testb	%r14b, %bpl
	popq	%rbx
	popq	%r14
	popq	%rbp
	jne	.LBB0_8
# %bb.3:                                # %vector.memcheck
	andb	%r10b, %r8b
	jne	.LBB0_8
# %bb.4:                                # %vector.memcheck
	andb	%r11b, %r9b
	jne	.LBB0_8
# %bb.5:                                # %vector.ph
	shrq	$5, %rax
	incq	%rax
	movq	%rax, %r8
	andq	$-8, %r8
	movq	%r8, %r9
	shlq	$5, %r9
	subq	%r9, %rdi
	xorps	%xmm0, %xmm0
	mulss	(%rcx), %xmm0
	movl	$0, (%rsi)
	movss	%xmm0, (%rdx)
	movq	%r8, %r9
.LBB0_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addq	$-8, %r9
	jne	.LBB0_6
# %bb.7:                                # %middle.block
	cmpq	%r8, %rax
	je	.LBB0_10
.LBB0_8:                                # %for.body.preheader14
	xorps	%xmm0, %xmm0
.LBB0_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movl	$0, (%rsi)
	movss	%xmm1, (%rdx)
	addq	$-32, %rdi
	cmpq	$31, %rdi
	ja	.LBB0_9
.LBB0_10:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_10
.Lfunc_end0:
	.size	xnn_f32_vmul_relu_ukernel__scalar_x8, .Lfunc_end0-xnn_f32_vmul_relu_ukernel__scalar_x8
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
