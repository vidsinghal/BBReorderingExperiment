	.text
	.file	""
	.globl	gt_tyrsearch                    # -- Begin function gt_tyrsearch
	.p2align	4, 0x90
	.type	gt_tyrsearch,@function
gt_tyrsearch:                           # @gt_tyrsearch
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dl
	je	.LBB0_3
# %bb.1:                                # %do.end
	testq	%rsi, %rsi
	setne	%al
	testb	%dil, %al
	je	.LBB0_4
# %bb.2:                                # %if.then6
	movl	$0, 0
	xorl	%eax, %eax
	retq
.LBB0_3:                                # %lor.lhs.false
	movzbl	0, %eax
	testb	$1, %dil
	jne	.LBB0_5
.LBB0_4:                                # %common.ret
	xorl	%eax, %eax
	retq
.LBB0_5:                                # %if.then
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	callq	fprintf@PLT
.Lfunc_end0:
	.size	gt_tyrsearch, .Lfunc_end0-gt_tyrsearch
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
