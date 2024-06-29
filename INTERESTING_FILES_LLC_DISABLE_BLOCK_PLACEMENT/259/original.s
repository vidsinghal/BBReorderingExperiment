	.text
	.file	""
	.globl	lu_build_factors                # -- Begin function lu_build_factors
	.p2align	4, 0x90
	.type	lu_build_factors,@function
lu_build_factors:                       # @lu_build_factors
# %bb.0:                                # %entry
	testl	%edx, %edx
	jle	.LBB0_7
# %bb.1:                                # %for.body.preheader
	xorl	%eax, %eax
	cmpl	$8, %edx
	jb	.LBB0_6
# %bb.2:                                # %vector.memcheck
	leaq	4(%rsi), %rcx
	leaq	4(%rdi), %r8
	cmpq	%rsi, %r8
	seta	%r8b
	cmpq	%rdi, %rcx
	seta	%cl
	testb	%cl, %r8b
	jne	.LBB0_6
# %bb.3:                                # %vector.ph
	movl	%edx, %eax
	andl	$2147483640, %eax               # imm = 0x7FFFFFF8
	movl	$0, (%rsi)
	movl	$1, %ecx
.LBB0_4:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%ecx, %r8d
	addl	$-8, %ecx
	leal	-8(%rax,%r8), %r8d
	cmpl	$1, %r8d
	jne	.LBB0_4
# %bb.5:                                # %middle.block
	negl	%ecx
	movl	%ecx, (%rdi)
	cmpl	%edx, %eax
	je	.LBB0_7
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$0, (%rsi)
	movl	%eax, (%rdi)
	incl	%eax
	cmpl	%eax, %edx
	jne	.LBB0_6
.LBB0_7:                                # %for.end
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	lu_build_factors, .Lfunc_end0-lu_build_factors
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
