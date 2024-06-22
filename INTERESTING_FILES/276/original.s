	.text
	.file	""
	.globl	dh_newctx                       # -- Begin function dh_newctx
	.p2align	4, 0x90
	.type	dh_newctx,@function
dh_newctx:                              # @dh_newctx
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_1
# %bb.3:                                # %if.end
	movq	0, %rax
	testb	$1, %sil
	jne	.LBB0_1
# %bb.4:                                # %if.end
	movq	CRYPTO_zalloc@GOTPCREL(%rip), %rax
	retq
.LBB0_1:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	dh_newctx, .Lfunc_end0-dh_newctx
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
