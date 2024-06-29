	.text
	.file	""
	.globl	csytf2_                         # -- Begin function csytf2_
	.p2align	4, 0x90
	.type	csytf2_,@function
csytf2_:                                # @csytf2_
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
	movq	%rcx, %rbx
	movl	%edx, %ebp
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	lsame_@PLT
	testb	$1, %bpl
	jne	.LBB0_4
.LBB0_1:                                # %if.end21
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, (%r15)
	jne	.LBB0_3
# %bb.2:                                # %if.then96
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$1, (%r15)
.LBB0_3:                                # %if.end97
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, (%r14,%rbx,4)
	jmp	.LBB0_1
.LBB0_4:                                # %common.ret
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
.Lfunc_end0:
	.size	csytf2_, .Lfunc_end0-csytf2_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
