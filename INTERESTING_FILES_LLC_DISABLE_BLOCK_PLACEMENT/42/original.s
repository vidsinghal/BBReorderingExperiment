	.text
	.file	""
	.globl	gt_rcr_encoder_encode           # -- Begin function gt_rcr_encoder_encode
	.p2align	4, 0x90
	.type	gt_rcr_encoder_encode,@function
gt_rcr_encoder_encode:                  # @gt_rcr_encoder_encode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	setne	%al
	testb	%sil, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then
	xorl	%eax, %eax
	callq	fprintf@PLT
.LBB0_2:                                # %do.end
	callq	gt_error_is_set@PLT
.Lfunc_end0:
	.size	gt_rcr_encoder_encode, .Lfunc_end0-gt_rcr_encoder_encode
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
