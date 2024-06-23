	.text
	.file	""
	.globl	FASTCOVER_checkParameters       # -- Begin function FASTCOVER_checkParameters
	.p2align	4, 0x90
	.type	FASTCOVER_checkParameters,@function
FASTCOVER_checkParameters:              # @FASTCOVER_checkParameters
# %bb.0:                                # %entry
	testl	%esi, %esi
	je	.LBB0_2
# %bb.1:                                # %entry
	xorl	%eax, %eax
	cmpl	$6, %esi
	jne	.LBB0_3
.LBB0_2:                                # %if.end25
	movl	%edi, %eax
.LBB0_3:                                # %return
	retq
.Lfunc_end0:
	.size	FASTCOVER_checkParameters, .Lfunc_end0-FASTCOVER_checkParameters
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
