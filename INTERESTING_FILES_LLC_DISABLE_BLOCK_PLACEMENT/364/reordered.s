	.text
	.file	""
	.globl	SHA256_Update                   # -- Begin function SHA256_Update
	.p2align	4, 0x90
	.type	SHA256_Update,@function
SHA256_Update:                          # @SHA256_Update
# %bb.0:                                # %entry
	pushq	%rbx
	movq	%rsi, %rax
	movq	%rdi, %rbx
	testb	$1, %dl
	jne	.LBB0_2
# %bb.1:                                # %if.then15
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	memcpy@PLT
	xorl	%eax, %eax
.LBB0_2:                                # %cleanup
	movl	%eax, (%rbx)
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end0:
	.size	SHA256_Update, .Lfunc_end0-SHA256_Update
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
