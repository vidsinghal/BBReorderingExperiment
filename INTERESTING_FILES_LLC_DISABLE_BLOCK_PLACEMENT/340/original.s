	.text
	.file	""
	.globl	dptcon_                         # -- Begin function dptcon_
	.p2align	4, 0x90
	.type	dptcon_,@function
dptcon_:                                # @dptcon_
# %bb.0:                                # %entry
	movl	(%rdi), %eax
	testl	%eax, %eax
	js	.LBB0_3
# %bb.1:                                # %for.body23.preheader
	incq	%rax
	xorl	%ecx, %ecx
.LBB0_2:                                # %for.body23
                                        # =>This Inner Loop Header: Depth=1
	movsd	(%rsi,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	movsd	%xmm0, (%rsi)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB0_2
.LBB0_3:                                # %for.cond41
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_3
.Lfunc_end0:
	.size	dptcon_, .Lfunc_end0-dptcon_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
