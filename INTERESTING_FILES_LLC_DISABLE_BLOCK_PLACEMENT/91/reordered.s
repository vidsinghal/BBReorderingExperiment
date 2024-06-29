	.text
	.file	""
	.globl	umfpack_zi_get_numeric          # -- Begin function umfpack_zi_get_numeric
	.p2align	4, 0x90
	.type	umfpack_zi_get_numeric,@function
umfpack_zi_get_numeric:                 # @umfpack_zi_get_numeric
# %bb.0:                                # %entry
	testl	%esi, %esi
	jg	.LBB0_5
.LBB0_1:                                # %for.end
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %vector.ph
	movl	%eax, %ecx
	andl	$2147483640, %ecx               # imm = 0x7FFFFFF8
	leaq	28(%rdx), %rsi
	movq	%rcx, %r8
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rsi), %r9d
	movl	%r9d, (%rdi)
	addq	$32, %rsi
	addq	$-8, %r8
	jne	.LBB0_3
# %bb.4:                                # %middle.block
	cmpl	%eax, %ecx
	je	.LBB0_1
	jmp	.LBB0_8
.LBB0_5:                                # %for.body.preheader
	movl	%esi, %eax
	cmpl	$12, %esi
	jb	.LBB0_7
# %bb.6:                                # %vector.memcheck
	leaq	4(%rdi), %rcx
	leaq	(%rdx,%rax,4), %rsi
	cmpq	%rdi, %rsi
	setbe	%sil
	cmpq	%rdx, %rcx
	setbe	%cl
	orb	%sil, %cl
	jne	.LBB0_2
.LBB0_7:
	xorl	%ecx, %ecx
.LBB0_8:                                # %for.body.preheader6
	leaq	(%rdx,%rcx,4), %rdx
	subq	%rcx, %rax
.LBB0_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rdx), %ecx
	movl	%ecx, (%rdi)
	addq	$4, %rdx
	decq	%rax
	jne	.LBB0_9
	jmp	.LBB0_1
.Lfunc_end0:
	.size	umfpack_zi_get_numeric, .Lfunc_end0-umfpack_zi_get_numeric
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
