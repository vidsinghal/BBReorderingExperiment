	.text
	.file	""
	.globl	nauty                           # -- Begin function nauty
	.p2align	4, 0x90
	.type	nauty,@function
nauty:                                  # @nauty
# %bb.0:                                # %entry
	notb	%dl
	movq	80(%rdi), %rax
	movq	%rax, 80
	movups	64(%rdi), %xmm0
	movups	%xmm0, 64
	movups	(%rdi), %xmm0
	movups	16(%rdi), %xmm1
	movups	32(%rdi), %xmm2
	movups	48(%rdi), %xmm3
	movups	%xmm3, 48
	movups	%xmm2, 32
	movups	%xmm1, 16
	movups	%xmm0, 0
	testl	%esi, %esi
	setne	%al
	orb	%dl, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then8
	movq	$0, (%rdi)
.LBB0_2:                                # %if.end9
	retq
.Lfunc_end0:
	.size	nauty, .Lfunc_end0-nauty
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
