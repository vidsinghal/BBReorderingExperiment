	.text
	.file	""
	.globl	OCSP_sendreq_new                # -- Begin function OCSP_sendreq_new
	.p2align	4, 0x90
	.type	OCSP_sendreq_new,@function
OCSP_sendreq_new:                       # @OCSP_sendreq_new
# %bb.0:                                # %entry
	movq	0, %rax
	testq	%rdi, %rdi
	sete	%al
	orb	%sil, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %land.lhs.true
	movq	0, %rax
.LBB0_2:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	OCSP_sendreq_new, .Lfunc_end0-OCSP_sendreq_new
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
