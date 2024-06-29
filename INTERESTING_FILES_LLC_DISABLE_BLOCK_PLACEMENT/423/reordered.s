	.text
	.file	""
	.globl	validate_metadata               # -- Begin function validate_metadata
	.p2align	4, 0x90
	.type	validate_metadata,@function
validate_metadata:                      # @validate_metadata
# %bb.0:                                # %entry
	movzwl	24, %eax
	movw	%ax, 24(%rdi)
	movq	16, %rax
	movq	%rax, 16(%rdi)
	movq	0, %rax
	movq	8, %rcx
	movq	%rcx, 8(%rdi)
	movq	%rax, (%rdi)
	testl	%esi, %esi
	setne	%al
	andb	%dl, %al
	cmpb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then5
	movl	0, %eax
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	validate_metadata, .Lfunc_end0-validate_metadata
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
