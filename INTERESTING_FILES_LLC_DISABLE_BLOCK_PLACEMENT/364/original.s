	.text
	.file	""
	.globl	SHA256_Update                   # -- Begin function SHA256_Update
	.p2align	4, 0x90
	.type	SHA256_Update,@function
SHA256_Update:                          # @SHA256_Update
# %bb.0:                                # %entry
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rax
	movq	%rdi, %rbx
	testb	$1, %dl
	jne	.LBB0_2
# %bb.1:                                # %if.then15
	xorl	%r14d, %r14d
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	memcpy@PLT
	jmp	.LBB0_3
.LBB0_2:                                # %if.end32
	movl	%eax, %r14d
.LBB0_3:                                # %cleanup
	movl	%r14d, (%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	SHA256_Update, .Lfunc_end0-SHA256_Update
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
