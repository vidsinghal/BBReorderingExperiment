	.text
	.file	""
	.globl	hypre_dorg2r                    # -- Begin function hypre_dorg2r
	.p2align	4, 0x90
	.type	hypre_dorg2r,@function
hypre_dorg2r:                           # @hypre_dorg2r
# %bb.0:                                # %entry
	movq	8(%rsp), %rax
	testb	$1, %r9b
	je	.LBB0_2
# %bb.1:                                # %if.then13
	movl	$0, (%rsi)
	.p2align	4, 0x90
.LBB0_2:                                # %for.cond83
                                        # =>This Inner Loop Header: Depth=1
	movq	$0, (%rdi)
	movl	$0, (%rax)
	jmp	.LBB0_2
.Lfunc_end0:
	.size	hypre_dorg2r, .Lfunc_end0-hypre_dorg2r
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
