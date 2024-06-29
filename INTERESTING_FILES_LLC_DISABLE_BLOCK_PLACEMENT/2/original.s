	.text
	.file	""
	.globl	ossl_blake2s_update             # -- Begin function ossl_blake2s_update
	.p2align	4, 0x90
	.type	ossl_blake2s_update,@function
ossl_blake2s_update:                    # @ossl_blake2s_update
# %bb.0:                                # %entry
	testq	%rsi, %rsi
	jne	.LBB0_2
# %bb.1:                                # %if.end15
	movq	$0, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ossl_blake2s_update, .Lfunc_end0-ossl_blake2s_update
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
