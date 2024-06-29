	.text
	.file	""
	.globl	clahrd_                         # -- Begin function clahrd_
	.p2align	4, 0x90
	.type	clahrd_,@function
clahrd_:                                # @clahrd_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movslq	(%rdi), %r12
	testq	%r12, %r12
	js	.LBB0_2
# %bb.1:                                # %if.end
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	clarfg_@PLT
	movl	$0, (%rbx)
	movl	$0, (%r15,%r12,8)
	movl	4(%rsp), %eax
	movl	(%r14), %eax
	orl	(%rbx), %eax
	movl	%eax, 4(%rsp)
	movl	$0, (%rsp)
	movq	%rsp, %rdi
	callq	cgemv_@PLT
	movl	$0, (%rbx)
	movl	0, %eax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	clahrd_, .Lfunc_end0-clahrd_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
