	.text
	.file	""
	.globl	gt_option_parser_new            # -- Begin function gt_option_parser_new
	.p2align	4, 0x90
	.type	gt_option_parser_new,@function
gt_option_parser_new:                   # @gt_option_parser_new
# %bb.0:                                # %entry
	pushq	%rax
	notb	%sil
	testq	%rdi, %rdi
	sete	%al
	orb	%sil, %al
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %do.end
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	fprintf@PLT
.LBB0_2:                                # %if.then
	movl	$1, %r9d
	xorl	%eax, %eax
	callq	fprintf@PLT
.Lfunc_end0:
	.size	gt_option_parser_new, .Lfunc_end0-gt_option_parser_new
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
