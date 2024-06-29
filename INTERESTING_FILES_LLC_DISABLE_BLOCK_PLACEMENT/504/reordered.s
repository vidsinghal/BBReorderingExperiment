	.text
	.file	""
	.globl	shuffle_generic_inline          # -- Begin function shuffle_generic_inline
	.p2align	4, 0x90
	.type	shuffle_generic_inline,@function
shuffle_generic_inline:                 # @shuffle_generic_inline
# %bb.0:                                # %entry
                                        # kill: def $edi killed $edi def $rdi
	testl	%edi, %edi
	jns	.LBB0_4
# %bb.1:                                # %iter.check
	movslq	%edi, %rcx
	movzbl	(%rsi), %eax
	negl	%edi
	cmpl	$8, %edi
	jae	.LBB0_5
# %bb.2:
	movq	%rcx, %r9
	jmp	.LBB0_15
.LBB0_3:                                # %for.body4
                                        # =>This Inner Loop Header: Depth=1
	movb	%al, -1(%rdx,%r9)
	incq	%rcx
	testl	%r9d, %r9d
	movq	%rcx, %r9
	jne	.LBB0_3
.LBB0_4:                                # %for.end
	retq
.LBB0_5:                                # %vector.main.loop.iter.check
	movzbl	%al, %r8d
	cmpl	$32, %edi
	jae	.LBB0_10
# %bb.6:
	xorl	%esi, %esi
.LBB0_7:                                # %vec.epilog.ph
	movl	%edi, %r10d
	andl	$-8, %r10d
	leaq	(%r10,%rcx), %r9
	movd	%r8d, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	addq	%rdx, %rcx
.LBB0_8:                                # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%xmm0, (%rcx,%rsi)
	addq	$8, %rsi
	cmpq	%rsi, %r10
	jne	.LBB0_8
# %bb.9:                                # %vec.epilog.middle.block
	cmpl	%edi, %r10d
	je	.LBB0_4
	jmp	.LBB0_15
.LBB0_10:                               # %vector.ph
	movl	%edi, %esi
	andl	$-32, %esi
	movd	%r8d, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	leaq	(%rcx,%rdx), %r9
	addq	$16, %r9
	xorl	%r10d, %r10d
.LBB0_11:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -16(%r9,%r10)
	movdqu	%xmm0, (%r9,%r10)
	addq	$32, %r10
	cmpq	%r10, %rsi
	jne	.LBB0_11
# %bb.12:                               # %middle.block
	cmpl	%edi, %esi
	je	.LBB0_4
# %bb.13:                               # %vec.epilog.iter.check
	testb	$24, %dil
	jne	.LBB0_7
# %bb.14:
	addq	%rcx, %rsi
	movq	%rsi, %r9
.LBB0_15:                               # %for.body4.preheader
	incq	%r9
	movq	%r9, %rcx
	jmp	.LBB0_3
.Lfunc_end0:
	.size	shuffle_generic_inline, .Lfunc_end0-shuffle_generic_inline
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
