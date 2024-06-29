	.text
	.file	""
	.globl	ctrsyl3_                        # -- Begin function ctrsyl3_
	.p2align	4, 0x90
	.type	ctrsyl3_,@function
ctrsyl3_:                               # @ctrsyl3_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %r13
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	lsame_@PLT
	callq	lsame_@PLT
	movl	%eax, %ebp
	movl	$c_n1, %r8d
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r9d, %r9d
	callq	ilaenv_@PLT
	movq	88(%rsp), %rax
	movl	$0, (%rax)
	callq	lsame_@PLT
	testl	%ebp, %ebp
	jne	.LBB0_2
# %bb.1:                                # %land.lhs.true70
	callq	lsame_@PLT
.LBB0_2:                                # %if.else74
	movq	80(%rsp), %rax
	movl	$0, (%rax)
	cmpl	$0, (%r13)
	je	.LBB0_4
# %bb.3:                                # %if.end151
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsp)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	movq	%rbx, %rcx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	ctrsyl_@PLT
.LBB0_4:                                # %common.ret
	xorl	%eax, %eax
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	ctrsyl3_, .Lfunc_end0-ctrsyl3_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
