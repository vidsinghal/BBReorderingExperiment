	.text
	.file	""
	.globl	NI_SplineFilter1D               # -- Begin function NI_SplineFilter1D
	.p2align	4, 0x90
	.type	NI_SplineFilter1D,@function
NI_SplineFilter1D:                      # @NI_SplineFilter1D
# %bb.0:                                # %entry
	testb	$1, %sil
	jne	.LBB0_2
# %bb.1:                                # %if.end
	movl	0, %eax
	testb	$1, %dl
	jne	.LBB0_4
.LBB0_2:
	xorl	%edi, %edi
.LBB0_3:                                # %exit
	movl	$0, (%rdi)
	xorl	%eax, %eax
	retq
.LBB0_4:                                # %if.end5
	movl	0, %eax
	jmp	.LBB0_3
.Lfunc_end0:
	.size	NI_SplineFilter1D, .Lfunc_end0-NI_SplineFilter1D
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
