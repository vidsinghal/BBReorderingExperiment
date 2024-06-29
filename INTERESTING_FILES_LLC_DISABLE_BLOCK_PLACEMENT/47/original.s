	.text
	.file	""
	.globl	cholmod_postorder               # -- Begin function cholmod_postorder
	.p2align	4, 0x90
	.type	cholmod_postorder,@function
cholmod_postorder:                      # @cholmod_postorder
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testb	$1, %r8b
	je	.LBB0_3
# %bb.1:                                # %lor.lhs.false
	testb	$1, %r9b
	je	.LBB0_5
# %bb.2:                                # %if.then6
	movl	$1, %edi
	callq	cholmod_error@PLT
	jmp	.LBB0_4
.LBB0_3:                                # %if.then3
	movq	16(%rsp), %rax
	movl	$0, (%rax)
.LBB0_4:                                # %common.ret
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB0_5:                                # %if.end11
	.cfi_def_cfa_offset 16
	xorl	%edi, %edi
	callq	cholmod_error@PLT
	jmp	.LBB0_4
.Lfunc_end0:
	.size	cholmod_postorder, .Lfunc_end0-cholmod_postorder
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
