	.text
	.file	""
	.globl	mbedtls_dhm_read_params         # -- Begin function mbedtls_dhm_read_params
	.p2align	4, 0x90
	.type	mbedtls_dhm_read_params,@function
mbedtls_dhm_read_params:                # @mbedtls_dhm_read_params
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	testq	%rdi, %rdi
	movzbl	(%rdi), %r14d
	js	.LBB0_2
# %bb.1:                                # %if.end.i
	movzbl	%r14b, %r14d
	addl	%r14d, %r14d
	callq	mbedtls_mpi_read_binary@PLT
	movq	%r14, (%rbx)
.LBB0_2:                                # %dhm_read_bignum.exit
	movzbl	%r14b, %r14d
	addl	%r14d, %r14d
	callq	mbedtls_mpi_read_binary@PLT
	movq	%r14, (%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	mbedtls_dhm_read_params, .Lfunc_end0-mbedtls_dhm_read_params
	.cfi_endproc
                                        # -- End function
	.globl	dhm_read_bignum                 # -- Begin function dhm_read_bignum
	.p2align	4, 0x90
	.type	dhm_read_bignum,@function
dhm_read_bignum:                        # @dhm_read_bignum
	.cfi_startproc
# %bb.0:                                # %entry
	testq	%rsi, %rsi
	js	.LBB1_2
# %bb.1:                                # %if.end
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdx, %rbx
	movzbl	(%rdi), %r14d
	addl	%r14d, %r14d
	orq	%rcx, %r14
	movq	%rdi, %r15
	callq	mbedtls_mpi_read_binary@PLT
	addq	%r14, %rbx
	movq	%rbx, (%r15)
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
	.cfi_restore %r15
.LBB1_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	dhm_read_bignum, .Lfunc_end1-dhm_read_bignum
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
