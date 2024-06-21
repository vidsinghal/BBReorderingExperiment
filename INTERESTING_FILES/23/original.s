	.text
	.file	""
	.globl	hypre_dgetri                    # -- Begin function hypre_dgetri
	.p2align	4, 0x90
	.type	hypre_dgetri,@function
hypre_dgetri:                           # @hypre_dgetri
# %bb.0:                                # %entry
	testl	%esi, %esi
	sets	%al
	testb	%dl, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then21
	movl	$0, (%rdi)
.LBB0_2:                                # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	hypre_dgetri, .Lfunc_end0-hypre_dgetri
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
