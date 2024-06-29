	.text
	.file	""
	.globl	ftl_mngt_p2l_ckpt_restore       # -- Begin function ftl_mngt_p2l_ckpt_restore
	.p2align	4, 0x90
	.type	ftl_mngt_p2l_ckpt_restore,@function
ftl_mngt_p2l_ckpt_restore:              # @ftl_mngt_p2l_ckpt_restore
# %bb.0:                                # %entry
	testq	%rsi, %rsi
	je	.LBB0_4
# %bb.1:                                # %for.body.lr.ph
	cmpq	$0, (%rdx)
	setne	%al
	cmpq	$-1, %rsi
	sete	%cl
	testb	%cl, %al
	je	.LBB0_4
# %bb.2:                                # %for.body.peel.next
	movq	(%rdi), %rax
.LBB0_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testq	%rax, %rax
	jne	.LBB0_3
.LBB0_4:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ftl_mngt_p2l_ckpt_restore, .Lfunc_end0-ftl_mngt_p2l_ckpt_restore
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
