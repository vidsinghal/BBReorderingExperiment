	.text
	.file	""
	.globl	lu_build_factors                # -- Begin function lu_build_factors
	.p2align	4, 0x90
	.type	lu_build_factors,@function
lu_build_factors:                       # @lu_build_factors
# %bb.0:                                # %entry
	testl	%edx, %edx
	jg	.LBB0_5
.LBB0_1:                                # %for.end
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %vector.ph
	movl	%edx, %eax
	andl	$2147483640, %eax               # imm = 0x7FFFFFF8
	movl	$0, (%rsi)
	movl	$1, %ecx
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %r8d
	addl	$-8, %ecx
	leal	-8(%rax,%r8), %r8d
	cmpl	$1, %r8d
	jne	.LBB0_3
# %bb.4:                                # %middle.block
	negl	%ecx
	movl	%ecx, (%rdi)
	cmpl	%edx, %eax
	je	.LBB0_1
	jmp	.LBB0_7
.LBB0_5:                                # %for.body.preheader
	xorl	%eax, %eax
	cmpl	$8, %edx
	jb	.LBB0_7
# %bb.6:                                # %vector.memcheck
	leaq	4(%rsi), %rcx
	leaq	4(%rdi), %r8
	cmpq	%rsi, %r8
	setbe	%r8b
	cmpq	%rdi, %rcx
	setbe	%cl
	orb	%r8b, %cl
	jne	.LBB0_2
.LBB0_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rsi)
	movl	%eax, (%rdi)
	incl	%eax
	cmpl	%eax, %edx
	jne	.LBB0_7
	jmp	.LBB0_1
.Lfunc_end0:
	.size	lu_build_factors, .Lfunc_end0-lu_build_factors
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
