	.text
	.file	""
	.globl	clatrs_                         # -- Begin function clatrs_
	.p2align	4, 0x90
	.type	clatrs_,@function
clatrs_:                                # @clatrs_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %r15d
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$0, (%rdi)
	movl	0, %eax
	movl	0, %eax
	testb	$1, %r8b
	jne	.LBB0_7
.LBB0_1:                                # %if.else
	xorl	%edi, %edi
	callq	lsame_@PLT
	testb	$1, %r15b
	jne	.LBB0_4
# %bb.2:                                # %if.else.if.end37_crit_edge
	testl	%ebp, %ebp
	je	.LBB0_5
# %bb.3:                                # %if.then39
	movl	0, %eax
	jmp	.LBB0_6
.LBB0_4:                                # %if.then32
	movl	$0, (%r14)
	movl	0, %eax
	jmp	.LBB0_6
.LBB0_5:                                # %if.end41
	movl	$0, (%rbx)
.LBB0_6:                                # %cleanup
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_7:                                # %land.lhs.true
	.cfi_def_cfa_offset 48
	movl	0, %eax
	jmp	.LBB0_1
.Lfunc_end0:
	.size	clatrs_, .Lfunc_end0-clatrs_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
