	.text
	.file	""
	.globl	validate_metadata               # -- Begin function validate_metadata
	.p2align	4, 0x90
	.type	validate_metadata,@function
validate_metadata:                      # @validate_metadata
# %bb.0:                                # %entry
	movl	0, %eax
	movl	0, %eax
	testl	%edi, %edi
	setne	%al
	andb	%sil, %al
	cmpb	$1, %al
	je	.LBB0_2
# %bb.1:                                # %if.end7
	movl	0, %eax
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	validate_metadata, .Lfunc_end0-validate_metadata
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
