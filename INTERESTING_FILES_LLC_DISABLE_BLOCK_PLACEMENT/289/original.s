	.text
	.file	""
	.globl	mbedtls_hmac_drbg_update_ret    # -- Begin function mbedtls_hmac_drbg_update_ret
	.p2align	4, 0x90
	.type	mbedtls_hmac_drbg_update_ret,@function
mbedtls_hmac_drbg_update_ret:           # @mbedtls_hmac_drbg_update_ret
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testb	$1, %dil
	je	.LBB0_6
# %bb.1:                                # %entry.split.us
	testb	$1, %dl
	je	.LBB0_5
# %bb.2:                                # %entry.split.us.split.us
	testb	$1, %sil
	je	.LBB0_4
.LBB0_3:                                # %for.cond.us.us.us
                                        # =>This Inner Loop Header: Depth=1
	callq	mbedtls_md_hmac_reset@PLT
	movl	0, %eax
	movl	0, %eax
	jmp	.LBB0_3
.LBB0_4:                                # %for.cond.us.us
	callq	mbedtls_md_hmac_reset@PLT
	movl	0, %eax
	movl	0, %eax
	jmp	.LBB0_7
.LBB0_5:                                # %for.cond.us
	callq	mbedtls_md_hmac_reset@PLT
	movl	0, %eax
	jmp	.LBB0_7
.LBB0_6:                                # %for.cond
	callq	mbedtls_md_hmac_reset@PLT
.LBB0_7:                                # %exit
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	mbedtls_hmac_drbg_update_ret, .Lfunc_end0-mbedtls_hmac_drbg_update_ret
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
