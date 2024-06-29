	.text
	.file	""
	.globl	umfdl_scale_column              # -- Begin function umfdl_scale_column
	.p2align	4, 0x90
	.type	umfdl_scale_column,@function
umfdl_scale_column:                     # @umfdl_scale_column
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	jle	.LBB0_14
# %bb.1:                                # %for.body.preheader
	cmpq	$10, %rdi
	jae	.LBB0_3
# %bb.2:
	xorl	%eax, %eax
	jmp	.LBB0_8
.LBB0_3:                                # %vector.memcheck
	movq	%rdi, %rax
	subq	%rsi, %rax
	movabsq	$2305843009213693948, %rcx      # imm = 0x1FFFFFFFFFFFFFFC
	testq	%rcx, %rax
	jne	.LBB0_5
# %bb.4:
	xorl	%eax, %eax
	jmp	.LBB0_8
.LBB0_5:                                # %vector.ph
	movabsq	$9223372036854775804, %rax      # imm = 0x7FFFFFFFFFFFFFFC
	andq	%rdi, %rax
	leaq	(%rdx,%rsi,8), %rcx
	addq	$16, %rcx
	leaq	(%rdx,%rdi,8), %r8
	addq	$16, %r8
	xorl	%r9d, %r9d
.LBB0_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	-16(%rcx,%r9,8), %xmm0
	movups	(%rcx,%r9,8), %xmm1
	movups	%xmm0, -16(%r8,%r9,8)
	movups	%xmm1, (%r8,%r9,8)
	addq	$4, %r9
	cmpq	%r9, %rax
	jne	.LBB0_6
# %bb.7:                                # %middle.block
	cmpq	%rdi, %rax
	je	.LBB0_14
.LBB0_8:                                # %for.body.preheader4
	movq	%rdi, %r8
	movq	%rax, %rcx
	andq	$3, %r8
	je	.LBB0_11
# %bb.9:                                # %for.body.prol.preheader
	leaq	(%rdx,%rdi,8), %r9
	leaq	(%rdx,%rsi,8), %r10
	movq	%rax, %rcx
.LBB0_10:                               # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movsd	(%r10,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	movsd	%xmm0, (%r9,%rcx,8)
	incq	%rcx
	decq	%r8
	jne	.LBB0_10
.LBB0_11:                               # %for.body.prol.loopexit
	subq	%rdi, %rax
	cmpq	$-4, %rax
	ja	.LBB0_14
# %bb.12:                               # %for.body.preheader1
	leaq	(%rdx,%rdi,8), %rax
	addq	$24, %rax
	leaq	(%rdx,%rsi,8), %rdx
	addq	$24, %rdx
.LBB0_13:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movsd	-24(%rdx,%rcx,8), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rax,%rcx,8)
	movsd	-16(%rdx,%rcx,8), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -16(%rax,%rcx,8)
	movsd	-8(%rdx,%rcx,8), %xmm0          # xmm0 = mem[0],zero
	movsd	%xmm0, -8(%rax,%rcx,8)
	movsd	(%rdx,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	movsd	%xmm0, (%rax,%rcx,8)
	addq	$4, %rcx
	cmpq	%rcx, %rdi
	jne	.LBB0_13
.LBB0_14:                               # %for.end
	retq
.Lfunc_end0:
	.size	umfdl_scale_column, .Lfunc_end0-umfdl_scale_column
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
