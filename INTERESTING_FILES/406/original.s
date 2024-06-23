	.text
	.file	""
	.globl	hypre_BoomerAMGSmoothInterpVectors # -- Begin function hypre_BoomerAMGSmoothInterpVectors
	.p2align	4, 0x90
	.type	hypre_BoomerAMGSmoothInterpVectors,@function
hypre_BoomerAMGSmoothInterpVectors:     # @hypre_BoomerAMGSmoothInterpVectors
# %bb.0:                                # %entry
	testl	%edi, %edi
	setne	%al
	testl	%esi, %esi
	setne	%cl
	testb	%cl, %al
	je	.LBB0_2
# %bb.1:                                # %if.then1
	movq	0, %rax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	hypre_BoomerAMGSmoothInterpVectors, .Lfunc_end0-hypre_BoomerAMGSmoothInterpVectors
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
