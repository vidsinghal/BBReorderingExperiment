	.text
	.file	""
	.globl	mbedtls_hmac_drbg_update_ret    # -- Begin function mbedtls_hmac_drbg_update_ret
	.p2align	4, 0x90
	.type	mbedtls_hmac_drbg_update_ret,@function
mbedtls_hmac_drbg_update_ret:           # @mbedtls_hmac_drbg_update_ret
	.cfi_startproc
# %bb.0:                                # %entry
	notb	%sil
	testq	%rdi, %rdi
	sete	%al
	orb	%sil, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then30
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	mbedtls_md_hmac_update@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	mbedtls_hmac_drbg_update_ret, .Lfunc_end0-mbedtls_hmac_drbg_update_ret
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
