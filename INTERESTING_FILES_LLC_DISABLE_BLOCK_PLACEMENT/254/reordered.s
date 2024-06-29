	.text
	.file	""
	.globl	ctrttp_                         # -- Begin function ctrttp_
	.p2align	4, 0x90
	.type	ctrttp_,@function
ctrttp_:                                # @ctrttp_
# %bb.0:                                # %entry
                                        # kill: def $edx killed $edx def $rdx
	testl	%edx, %edx
	jns	.LBB0_5
.LBB0_1:                                # %for.end
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %vector.ph
	movl	%eax, %ecx
	andl	$-4, %ecx
	leaq	16(%rsi), %rdx
	movq	%rcx, %r8
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm0                    # xmm0 = xmm0[0,0,1,1]
	xorps	%xmm1, %xmm1
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movups	%xmm1, -16(%rdx)
	movups	%xmm1, (%rdx)
	addq	$32, %rdx
	addq	$-4, %r8
	jne	.LBB0_3
# %bb.4:                                # %middle.block
	cmpl	%eax, %ecx
	je	.LBB0_1
	jmp	.LBB0_8
.LBB0_5:                                # %for.body19.preheader
	leal	1(%rdx), %eax
	cmpl	$7, %edx
	jb	.LBB0_7
# %bb.6:                                # %vector.memcheck
	leaq	(%rsi,%rax,8), %rcx
	leaq	4(%rdi), %rdx
	cmpq	%rsi, %rdx
	setbe	%dl
	cmpq	%rdi, %rcx
	setbe	%cl
	orb	%dl, %cl
	jne	.LBB0_2
.LBB0_7:
	xorl	%ecx, %ecx
.LBB0_8:                                # %for.body19.preheader11
	leaq	4(%rsi,%rcx,8), %rdx
	subq	%rcx, %rax
.LBB0_9:                                # %for.body19
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, -4(%rdx)
	movss	(%rdi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rdx)
	addq	$8, %rdx
	decq	%rax
	jne	.LBB0_9
	jmp	.LBB0_1
.Lfunc_end0:
	.size	ctrttp_, .Lfunc_end0-ctrttp_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
