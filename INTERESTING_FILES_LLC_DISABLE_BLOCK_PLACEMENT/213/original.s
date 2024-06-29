	.text
	.file	""
	.globl	hypre_dorg2r                    # -- Begin function hypre_dorg2r
	.p2align	4, 0x90
	.type	hypre_dorg2r,@function
hypre_dorg2r:                           # @hypre_dorg2r
# %bb.0:                                # %entry
	testl	%r8d, %r8d
	sets	%al
	testb	%al, 8(%rsp)
	je	.LBB0_2
# %bb.1:                                # %if.then9
	movl	$1, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	hypre_dorg2r, .Lfunc_end0-hypre_dorg2r
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
