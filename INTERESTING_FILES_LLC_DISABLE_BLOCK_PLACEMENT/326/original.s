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
	pushq	%rbx
	movq	%rdi, %rbx
	testb	$1, %cl
	jne	.LBB0_5
# %bb.2:                                # %if.then2
	orq	$1, %rsi
.LBB0_3:                                # %common.ret.sink.split
	movq	%rsi, (%rbx)
	popq	%rbx
.LBB0_4:                                # %common.ret
	xorl	%eax, %eax
	retq
.LBB0_5:                                # %if.end16
	xorl	%edi, %edi
	movq	%rsi, %rdx
	movq	%rbx, %rsi
	callq	memcpy@PLT
	xorl	%esi, %esi
	jmp	.LBB0_3
.Lfunc_end0:
	.size	ossl_sha3_update, .Lfunc_end0-ossl_sha3_update
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
