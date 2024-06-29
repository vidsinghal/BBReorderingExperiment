	.text
	.file	""
	.globl	cs_dl_qr                        # -- Begin function cs_dl_qr
	.p2align	4, 0x90
	.type	cs_dl_qr,@function
cs_dl_qr:                               # @cs_dl_qr
# %bb.0:                                # %entry
	movq	0, %rax
	movq	$0, (%rax)
	xorl	%eax, %eax
	testb	%al, %al
	jne	.LBB0_3
# %bb.1:                                # %for.end81
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %for.body75.us
	movq	$0, (%rsi)
	xorl	%eax, %eax
	retq
.LBB0_3:                                # %for.body75.lr.ph
	testq	%rdx, %rdx
	je	.LBB0_2
# %bb.4:                                # %for.body75.preheader
	xorl	%eax, %eax
.LBB0_5:                                # %for.body75
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, (%rsi)
	movq	(%rdi), %rax
	jmp	.LBB0_5
.Lfunc_end0:
	.size	cs_dl_qr, .Lfunc_end0-cs_dl_qr
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
