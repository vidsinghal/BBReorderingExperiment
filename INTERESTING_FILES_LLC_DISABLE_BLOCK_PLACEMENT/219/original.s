	.text
	.file	""
	.globl	gt_tyrsearch                    # -- Begin function gt_tyrsearch
	.p2align	4, 0x90
	.type	gt_tyrsearch,@function
gt_tyrsearch:                           # @gt_tyrsearch
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dl
	jne	.LBB0_3
# %bb.1:                                # %lor.lhs.false
	movzbl	0, %eax
	testb	$1, %dil
	je	.LBB0_5
# %bb.2:                                # %if.then
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	callq	fprintf@PLT
.LBB0_3:                                # %do.end
	.cfi_def_cfa_offset 8
	testq	%rsi, %rsi
	sete	%al
	notb	%dil
	orb	%al, %dil
	testb	$1, %dil
	jne	.LBB0_5
# %bb.4:                                # %if.then6
	movl	$0, 0
.LBB0_5:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gt_tyrsearch, .Lfunc_end0-gt_tyrsearch
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
