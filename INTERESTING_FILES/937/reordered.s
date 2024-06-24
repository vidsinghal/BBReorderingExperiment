	.text
	.file	""
	.globl	hypre_MGRDestroy                # -- Begin function hypre_MGRDestroy
	.p2align	4, 0x90
	.type	hypre_MGRDestroy,@function
hypre_MGRDestroy:                       # @hypre_MGRDestroy
# %bb.0:                                # %entry
	cmpl	$1, %esi
	jle	.LBB0_3
# %bb.1:                                # %for.body67.lr.ph
	movq	$0, (%rdi)
	cmpl	$2, %esi
	jne	.LBB0_2
.LBB0_3:                                # %for.end76
	xorl	%eax, %eax
	retq
	.p2align	4, 0x90
.LBB0_2:                                # %for.body67
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.Lfunc_end0:
	.size	hypre_MGRDestroy, .Lfunc_end0-hypre_MGRDestroy
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
