	.text
	.file	""
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function dpstf2_
.LCPI0_0:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.text
	.globl	dpstf2_
	.p2align	4, 0x90
	.type	dpstf2_,@function
dpstf2_:                                # @dpstf2_
# %bb.0:                                # %entry
	movl	(%rdi), %eax
	testl	%eax, %eax
	jg	.LBB0_5
# %bb.1:
	movl	$1, %ecx
.LBB0_2:                                # %for.cond22.preheader
	decl	%ecx
.LBB0_3:                                # %for.cond22
                                        # =>This Inner Loop Header: Depth=1
	incl	%ecx
	cmpl	%eax, %ecx
	jle	.LBB0_3
# %bb.4:                                # %if.then42
	xorl	%eax, %eax
	retq
.LBB0_5:                                # %for.body.preheader
	leaq	1(%rax), %rcx
	movl	$1, %edx
	cmpl	$8, %eax
	jb	.LBB0_9
# %bb.6:                                # %vector.ph
	movl	%eax, %edi
	andl	$-8, %edi
	leaq	1(%rdi), %rdx
	xorl	%r8d, %r8d
	movaps	.LCPI0_0(%rip), %xmm0           # xmm0 = [1,1,1,1]
.LBB0_7:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 4(%rsi,%r8,4)
	movups	%xmm0, 20(%rsi,%r8,4)
	addq	$8, %r8
	cmpq	%r8, %rdi
	jne	.LBB0_7
# %bb.8:                                # %middle.block
	cmpl	%edi, %eax
	je	.LBB0_2
.LBB0_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$1, (%rsi,%rdx,4)
	incq	%rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_9
	jmp	.LBB0_2
.Lfunc_end0:
	.size	dpstf2_, .Lfunc_end0-dpstf2_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
