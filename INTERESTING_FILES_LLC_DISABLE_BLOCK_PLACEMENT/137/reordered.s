	.text
	.file	""
	.globl	OCSP_request_add0_id            # -- Begin function OCSP_request_add0_id
	.p2align	4, 0x90
	.type	OCSP_request_add0_id,@function
OCSP_request_add0_id:                   # @OCSP_request_add0_id
# %bb.0:                                # %entry
	xorb	$1, %sil
	testq	%rdi, %rdi
	setne	%al
	testb	%sil, %al
	je	.LBB0_2
# %bb.1:                                # %if.then6
	movq	$0, (%rdi)
.LBB0_2:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	OCSP_request_add0_id, .Lfunc_end0-OCSP_request_add0_id
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
