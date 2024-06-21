	.text
	.file	""
	.globl	aws_signing_result_set_property # -- Begin function aws_signing_result_set_property
	.p2align	4, 0x90
	.type	aws_signing_result_set_property,@function
aws_signing_result_set_property:        # @aws_signing_result_set_property
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	setne	%al
	andb	%sil, %al
	cmpb	$1, %al
	je	.LBB0_2
# %bb.1:                                # %if.end
	movl	0, %eax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	aws_signing_result_set_property, .Lfunc_end0-aws_signing_result_set_property
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
