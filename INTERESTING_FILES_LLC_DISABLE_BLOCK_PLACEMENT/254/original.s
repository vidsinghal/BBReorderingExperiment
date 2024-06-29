	.text
	.file	""
	.globl	ctrttp_                         # -- Begin function ctrttp_
	.p2align	4, 0x90
	.type	ctrttp_,@function
ctrttp_:                                # @ctrttp_
# %bb.0:                                # %entry
                                        # kill: def $edx killed $edx def $rdx
	testl	%edx, %edx
	js	.LBB0_10
# %bb.1:                                # %for.body19.preheader
	leal	1(%rdx), %eax
	cmpl	$7, %edx
	jae	.LBB0_3
# %bb.2:
	xorl	%ecx, %ecx
	jmp	.LBB0_8
.LBB0_3:                                # %vector.memcheck
	leaq	(%rsi,%rax,8), %rcx
	leaq	4(%rdi), %rdx
	cmpq	%rsi, %rdx
	seta	%dl
	cmpq	%rdi, %rcx
	seta	%cl
	testb	%cl, %dl
	je	.LBB0_5
# %bb.4:
	xorl	%ecx, %ecx
	jmp	.LBB0_8
.LBB0_5:                                # %vector.ph
	movl	%eax, %ecx
	andl	$-4, %ecx
	leaq	16(%rsi), %rdx
	movq	%rcx, %r8
.LBB0_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rdi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm0                    # xmm0 = xmm0[0,0,1,1]
	xorps	%xmm1, %xmm1
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movups	%xmm1, -16(%rdx)
	movups	%xmm1, (%rdx)
	addq	$32, %rdx
	addq	$-4, %r8
	jne	.LBB0_6
# %bb.7:                                # %middle.block
	cmpl	%eax, %ecx
	je	.LBB0_10
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
.LBB0_10:                               # %for.end
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ctrttp_, .Lfunc_end0-ctrttp_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
