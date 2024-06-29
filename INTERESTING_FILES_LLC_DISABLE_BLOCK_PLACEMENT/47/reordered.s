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
	jne	.LBB0_2
# %bb.1:                                # %if.then3
	movq	16(%rsp), %rax
	movl	$0, (%rax)
	jmp	.LBB0_5
.LBB0_2:                                # %lor.lhs.false
	testb	$1, %r9b
	je	.LBB0_6
# %bb.3:                                # %if.then6
	movl	$1, %edi
.LBB0_4:                                # %common.ret
	callq	cholmod_error@PLT
.LBB0_5:                                # %common.ret
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB0_6:                                # %if.end11
	.cfi_def_cfa_offset 16
	xorl	%edi, %edi
	jmp	.LBB0_4
.Lfunc_end0:
	.size	cholmod_postorder, .Lfunc_end0-cholmod_postorder
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
