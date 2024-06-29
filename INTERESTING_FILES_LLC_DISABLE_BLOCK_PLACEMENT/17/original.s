	.text
	.file	""
	.globl	dlarzb_                         # -- Begin function dlarzb_
	.p2align	4, 0x90
	.type	dlarzb_,@function
dlarzb_:                                # @dlarzb_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	testb	$1, %cl
	jne	.LBB0_3
# %bb.1:                                # %for.cond.preheader
	movslq	(%rdi), %rax
	leaq	(%rdx,%rax,8), %rbx
	movslq	(%rsi), %r14
	shlq	$3, %r14
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	dcopy_@PLT
	jmp	.LBB0_2
.LBB0_3:                                # %if.then
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	dlarzb_, .Lfunc_end0-dlarzb_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
