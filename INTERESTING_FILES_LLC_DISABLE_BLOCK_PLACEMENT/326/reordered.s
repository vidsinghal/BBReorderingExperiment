	.text
	.file	""
	.globl	ossl_sha3_update                # -- Begin function ossl_sha3_update
	.p2align	4, 0x90
	.type	ossl_sha3_update,@function
ossl_sha3_update:                       # @ossl_sha3_update
# %bb.0:                                # %entry
	testb	$1, %dl
	jne	.LBB0_4
# %bb.1:                                # %if.end
	testb	$1, %cl
	jne	.LBB0_3
# %bb.2:                                # %if.then2
	orq	$1, %rsi
	movq	%rsi, (%rdi)
	xorl	%eax, %eax
	retq
.LBB0_3:                                # %if.end16
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	xorl	%r14d, %r14d
	movq	%rdi, %rbx
	xorl	%edi, %edi
	movq	%rsi, %rdx
	movq	%rbx, %rsi
	callq	memcpy@PLT
	movq	%r14, (%rbx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
.LBB0_4:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ossl_sha3_update, .Lfunc_end0-ossl_sha3_update
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
