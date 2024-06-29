	.text
	.file	""
	.globl	dptcon_                         # -- Begin function dptcon_
	.p2align	4, 0x90
	.type	dptcon_,@function
dptcon_:                                # @dptcon_
# %bb.0:                                # %entry
	movslq	(%rdi), %rax
	testq	%rax, %rax
	jns	.LBB0_2
.LBB0_1:                                # %for.cond41
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_1
.LBB0_2:                                # %for.body23.preheader
	incl	%eax
	xorl	%ecx, %ecx
.LBB0_3:                                # %for.body23
                                        # =>This Inner Loop Header: Depth=1
	movsd	(%rsi,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	movsd	%xmm0, (%rsi)
	incq	%rcx
	cmpq	%rcx, %rax
	jne	.LBB0_3
	jmp	.LBB0_1
.Lfunc_end0:
	.size	dptcon_, .Lfunc_end0-dptcon_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
