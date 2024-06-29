	.text
	.file	""
	.globl	v3p_netlib_srot_                # -- Begin function v3p_netlib_srot_
	.p2align	4, 0x90
	.type	v3p_netlib_srot_,@function
v3p_netlib_srot_:                       # @v3p_netlib_srot_
# %bb.0:                                # %entry
	testq	%rsi, %rsi
	js	.LBB0_8
# %bb.1:                                # %for.body.preheader
	cmpq	$7, %rsi
	setae	%al
	cmpq	$1, %rdx
	sete	%cl
	andb	%al, %cl
	cmpb	$1, %cl
	je	.LBB0_3
# %bb.2:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.LBB0_6
.LBB0_3:                                # %vector.ph
	leaq	1(%rsi), %r8
	movq	%r8, %rax
	andq	$-8, %rax
	movq	%rax, %rcx
	imulq	%rdx, %rcx
	leaq	16(%rdi), %r9
	xorps	%xmm0, %xmm0
	movq	%rax, %r10
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -16(%r9)
	movups	%xmm0, (%r9)
	addq	$32, %r9
	addq	$-8, %r10
	jne	.LBB0_4
# %bb.5:                                # %middle.block
	cmpq	%rax, %r8
	je	.LBB0_8
.LBB0_6:                                # %for.body.preheader5
	leaq	(%rdi,%rcx,4), %rcx
	shlq	$2, %rdx
	subq	%rax, %rsi
	incq	%rsi
.LBB0_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rcx)
	addq	%rdx, %rcx
	decq	%rsi
	jne	.LBB0_7
.LBB0_8:                                # %for.end
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	v3p_netlib_srot_, .Lfunc_end0-v3p_netlib_srot_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
