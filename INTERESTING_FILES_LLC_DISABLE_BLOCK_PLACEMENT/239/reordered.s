	.text
	.file	""
	.globl	sskew_commit_row_hbmv           # -- Begin function sskew_commit_row_hbmv
	.p2align	4, 0x90
	.type	sskew_commit_row_hbmv,@function
sskew_commit_row_hbmv:                  # @sskew_commit_row_hbmv
# %bb.0:                                # %entry
	testl	%esi, %esi
	jle	.LBB0_13
# %bb.1:                                # %for.body35.lr.ph
	movl	%esi, %eax
	negl	%eax
	cltq
	leaq	(%rdi,%rax,4), %rax
	movl	%esi, %ecx
	cmpl	$20, %esi
	jb	.LBB0_4
# %bb.2:                                # %vector.memcheck
	leaq	(%rdx,%rcx,4), %rsi
	cmpq	%rsi, %rax
	jae	.LBB0_10
# %bb.3:                                # %vector.memcheck
	movq	%rcx, %rsi
	shlq	$2, %rsi
	subq	%rsi, %rdi
	addq	$4, %rdi
	cmpq	%rdx, %rdi
	jbe	.LBB0_10
.LBB0_4:
	xorl	%esi, %esi
.LBB0_5:                                # %for.body35.preheader
	movq	%rcx, %r8
	movq	%rsi, %rdi
	andq	$3, %r8
	je	.LBB0_8
# %bb.6:
	movq	%rsi, %rdi
.LBB0_7:                                # %for.body35.prol
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdx,%rdi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax)
	incq	%rdi
	decq	%r8
	jne	.LBB0_7
.LBB0_8:                                # %for.body35.prol.loopexit
	subq	%rcx, %rsi
	cmpq	$-4, %rsi
	ja	.LBB0_13
.LBB0_9:                                # %for.body35
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdx,%rdi,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax)
	movss	4(%rdx,%rdi,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax)
	movss	8(%rdx,%rdi,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax)
	movss	12(%rdx,%rdi,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax)
	addq	$4, %rdi
	cmpq	%rdi, %rcx
	jne	.LBB0_9
	jmp	.LBB0_13
.LBB0_10:                               # %vector.ph
	movl	%ecx, %esi
	andl	$2147483640, %esi               # imm = 0x7FFFFFF8
	movl	%ecx, %edi
	shrl	$3, %edi
	andl	$268435455, %edi                # imm = 0xFFFFFFF
	shlq	$5, %rdi
	xorl	%r8d, %r8d
.LBB0_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movss	28(%rdx,%r8), %xmm0             # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rax)
	addq	$32, %r8
	cmpq	%r8, %rdi
	jne	.LBB0_11
# %bb.12:                               # %middle.block
	cmpl	%ecx, %esi
	jne	.LBB0_5
.LBB0_13:                               # %for.end45
	retq
.Lfunc_end0:
	.size	sskew_commit_row_hbmv, .Lfunc_end0-sskew_commit_row_hbmv
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
