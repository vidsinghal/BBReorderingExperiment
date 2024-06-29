	.text
	.file	""
	.globl	gt_option_parser_new            # -- Begin function gt_option_parser_new
	.p2align	4, 0x90
	.type	gt_option_parser_new,@function
gt_option_parser_new:                   # @gt_option_parser_new
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	setne	%al
	testb	%sil, %al
	je	.LBB0_4
# %bb.1:                                # %land.lhs.true3
	movq	0, %rax
	testq	%rcx, %rcx
	je	.LBB0_5
# %bb.2:                                # %land.lhs.true6
	testb	$1, %dl
	je	.LBB0_5
# %bb.3:                                # %do.end25
	movl	$1, %edi
	callq	gt_calloc_mem@PLT
.LBB0_4:                                # %if.then
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	xorl	%eax, %eax
	callq	fprintf@PLT
.LBB0_5:                                # %if.then21
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	fprintf@PLT
.Lfunc_end0:
	.size	gt_option_parser_new, .Lfunc_end0-gt_option_parser_new
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
