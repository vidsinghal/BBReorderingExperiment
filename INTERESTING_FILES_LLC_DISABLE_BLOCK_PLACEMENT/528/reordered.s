	.text
	.file	""
	.globl	CRYPTO_ocb128_setiv             # -- Begin function CRYPTO_ocb128_setiv
	.p2align	4, 0x90
	.type	CRYPTO_ocb128_setiv,@function
CRYPTO_ocb128_setiv:                    # @CRYPTO_ocb128_setiv
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	setne	%al
	orb	%sil, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %lor.lhs.false4
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 64
	movaps	%xmm0, 48
	movaps	%xmm0, 32
	movaps	%xmm0, 16
	movaps	%xmm0, 0
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	CRYPTO_ocb128_setiv, .Lfunc_end0-CRYPTO_ocb128_setiv
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
