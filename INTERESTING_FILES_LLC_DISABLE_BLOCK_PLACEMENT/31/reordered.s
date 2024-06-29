	.text
	.file	""
	.globl	vq_nbest_sign                   # -- Begin function vq_nbest_sign
	.p2align	4, 0x90
	.type	vq_nbest_sign,@function
vq_nbest_sign:                          # @vq_nbest_sign
# %bb.0:                                # %entry
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%edi, %eax
	movq	%rsp, %r8
	leaq	15(,%rax,4), %r9
	andq	$-16, %r9
	movq	%r8, %rax
	subq	%r9, %rax
	movq	%rax, %rsp
	negq	%r9
	movl	$0, (%r8,%r9)
	movl	$-1, %r8d
.LBB0_1:                                # %for.cond21
                                        # =>This Inner Loop Header: Depth=1
	incl	%r8d
	cmpl	%edi, %r8d
	jge	.LBB0_1
# %bb.2:                                # %for.cond44.preheader
	movss	(%rax,%rcx,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rsi)
	movss	-4(%rdx,%rcx,4), %xmm0          # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rdx,%rcx,4)
	movss	-4(%rdx), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rdx)
.LBB0_3:                                # %for.cond44
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_3
.Lfunc_end0:
	.size	vq_nbest_sign, .Lfunc_end0-vq_nbest_sign
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
