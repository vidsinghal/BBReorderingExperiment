	.text
	.file	""
	.globl	lj_cf_bit_tohex                 # -- Begin function lj_cf_bit_tohex
	.p2align	4, 0x90
	.type	lj_cf_bit_tohex,@function
lj_cf_bit_tohex:                        # @lj_cf_bit_tohex
# %bb.0:                                # %entry
	testl	%esi, %esi
	jle	.LBB0_15
# %bb.1:                                # %iter.check
	movq	16(%rsp), %rax
	movl	%esi, %ecx
	movzbl	(%rax), %eax
	cmpl	$4, %esi
	jb	.LBB0_12
# %bb.2:                                # %vector.main.loop.iter.check
	cmpl	$32, %esi
	movzbl	%al, %edi
	jae	.LBB0_7
# %bb.3:
	xorl	%esi, %esi
.LBB0_4:                                # %vec.epilog.ph
	movl	%ecx, %r9d
	andl	$2147483644, %r9d               # imm = 0x7FFFFFFC
	movl	%ecx, %r8d
	andl	$3, %r8d
	movd	%edi, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	movq	%rcx, %rdi
	subq	%rsi, %rdi
	subq	%r9, %rsi
	leaq	-3(%rdi,%rdx), %rdi
.LBB0_5:                                # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	movd	%xmm0, (%rdi)
	addq	$-4, %rdi
	addq	$4, %rsi
	jne	.LBB0_5
# %bb.6:                                # %vec.epilog.middle.block
	cmpl	%ecx, %r9d
	jne	.LBB0_13
	jmp	.LBB0_15
.LBB0_7:                                # %vector.ph
	movl	%ecx, %esi
	andl	$2147483616, %esi               # imm = 0x7FFFFFE0
	movd	%edi, %xmm0
	punpcklbw	%xmm0, %xmm0            # xmm0 = xmm0[0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7]
	pshuflw	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0,4,5,6,7]
	pshufd	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	leaq	-15(%rcx,%rdx), %r8
	movq	%rsi, %r9
.LBB0_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%r8)
	movdqu	%xmm0, -16(%r8)
	addq	$-32, %r8
	addq	$-32, %r9
	jne	.LBB0_8
# %bb.9:                                # %middle.block
	cmpl	%ecx, %esi
	je	.LBB0_15
# %bb.10:                               # %vec.epilog.iter.check
	testb	$28, %cl
	jne	.LBB0_4
# %bb.11:
	andl	$31, %ecx
.LBB0_12:                               # %for.body.preheader
	movq	%rcx, %r8
.LBB0_13:                               # %for.body.preheader
	incq	%r8
.LBB0_14:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	%al, -1(%rdx,%r8)
	decq	%r8
	cmpq	$1, %r8
	ja	.LBB0_14
.LBB0_15:                               # %for.end
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	lj_cf_bit_tohex, .Lfunc_end0-lj_cf_bit_tohex
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
