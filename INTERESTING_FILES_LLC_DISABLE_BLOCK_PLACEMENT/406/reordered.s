	.text
	.file	""
	.globl	hypre_BoomerAMGSmoothInterpVectors # -- Begin function hypre_BoomerAMGSmoothInterpVectors
	.p2align	4, 0x90
	.type	hypre_BoomerAMGSmoothInterpVectors,@function
hypre_BoomerAMGSmoothInterpVectors:     # @hypre_BoomerAMGSmoothInterpVectors
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%edi, %edi
	setne	%al
	testl	%esi, %esi
	setne	%cl
	testb	%cl, %al
	jne	.LBB0_2
# %bb.1:                                # %cleanup
	movq	hypre__global_error@GOTPCREL(%rip), %rax
	movl	(%rax), %eax
	retq
.LBB0_2:                                # %if.then1
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	hypre_ParVectorInRangeOf@PLT
.Lfunc_end0:
	.size	hypre_BoomerAMGSmoothInterpVectors, .Lfunc_end0-hypre_BoomerAMGSmoothInterpVectors
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
