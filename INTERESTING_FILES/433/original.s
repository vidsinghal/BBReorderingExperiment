	.text
	.file	""
	.globl	gt_option_parser_new            # -- Begin function gt_option_parser_new
	.p2align	4, 0x90
	.type	gt_option_parser_new,@function
gt_option_parser_new:                   # @gt_option_parser_new
# %bb.0:                                # %entry
	pushq	%rax
	testq	%rdi, %rdi
	setne	%al
	xorl	%edi, %edi
	testb	%sil, %al
	je	.LBB0_1
# %bb.2:                                # %do.end
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	fprintf@PLT
.LBB0_1:                                # %if.then
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	xorl	%eax, %eax
	callq	fprintf@PLT
.Lfunc_end0:
	.size	gt_option_parser_new, .Lfunc_end0-gt_option_parser_new
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
