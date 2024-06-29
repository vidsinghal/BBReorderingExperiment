	.text
	.file	""
	.globl	mbedtls_des_free                # -- Begin function mbedtls_des_free
	.p2align	4, 0x90
	.type	mbedtls_des_free,@function
mbedtls_des_free:                       # @mbedtls_des_free
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.end
	movl	$0, 0
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	mbedtls_des_free, .Lfunc_end0-mbedtls_des_free
                                        # -- End function
	.globl	mbedtls_des_key_set_parity      # -- Begin function mbedtls_des_key_set_parity
	.p2align	4, 0x90
	.type	mbedtls_des_key_set_parity,@function
mbedtls_des_key_set_parity:             # @mbedtls_des_key_set_parity
# %bb.0:                                # %entry
	movzbl	(%rdi), %eax
	movq	odd_parity_table@GOTPCREL(%rip), %rcx
	movzbl	(%rcx,%rax), %eax
	movb	%al, (%rdi)
	movzbl	1(%rdi), %eax
	movzbl	(%rcx,%rax), %eax
	movb	%al, 1(%rdi)
	movzbl	2(%rdi), %eax
	movzbl	(%rcx,%rax), %eax
	movb	%al, 2(%rdi)
	movzbl	3(%rdi), %eax
	movzbl	(%rcx,%rax), %eax
	movb	%al, 3(%rdi)
	movzbl	4(%rdi), %eax
	movzbl	(%rcx,%rax), %eax
	movb	%al, 4(%rdi)
	movzbl	5(%rdi), %eax
	movzbl	(%rcx,%rax), %eax
	movb	%al, 5(%rdi)
	movzbl	6(%rdi), %eax
	movzbl	(%rcx,%rax), %eax
	movb	%al, 6(%rdi)
	movzbl	7(%rdi), %eax
	movzbl	(%rcx,%rax), %eax
	movb	%al, 7(%rdi)
	retq
.Lfunc_end1:
	.size	mbedtls_des_key_set_parity, .Lfunc_end1-mbedtls_des_key_set_parity
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
