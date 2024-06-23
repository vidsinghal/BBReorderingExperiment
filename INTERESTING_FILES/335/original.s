	.text
	.file	""
	.globl	axl_dbg                         # -- Begin function axl_dbg
	.p2align	4, 0x90
	.type	axl_dbg,@function
axl_dbg:                                # @axl_dbg
# %bb.0:                                # %entry
	subq	$56, %rsp
	movq	%rsi, -120(%rsp)
	movq	%rdx, -112(%rsp)
	movq	%rcx, -104(%rsp)
	movq	%r8, -96(%rsp)
	movq	%r9, -88(%rsp)
	testb	%al, %al
	jne	.LBB0_3
# %bb.4:                                # %entry
	testb	$1, %dil
	jne	.LBB0_1
.LBB0_2:                                # %if.end12
	addq	$56, %rsp
	retq
.LBB0_3:                                # %entry
	movaps	%xmm0, -80(%rsp)
	movaps	%xmm1, -64(%rsp)
	movaps	%xmm2, -48(%rsp)
	movaps	%xmm3, -32(%rsp)
	movaps	%xmm4, -16(%rsp)
	movaps	%xmm5, (%rsp)
	movaps	%xmm6, 16(%rsp)
	movaps	%xmm7, 32(%rsp)
	testb	$1, %dil
	je	.LBB0_2
.LBB0_1:                                # %if.then4
	leaq	-128(%rsp), %rax
	movq	%rax, 16
	leaq	64(%rsp), %rax
	movq	%rax, 8
	movl	$48, 4
	movl	$8, 0
	addq	$56, %rsp
	retq
.Lfunc_end0:
	.size	axl_dbg, .Lfunc_end0-axl_dbg
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
