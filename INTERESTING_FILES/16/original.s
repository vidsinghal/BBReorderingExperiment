	.text
	.file	""
	.globl	dptsvx_                         # -- Begin function dptsvx_
	.p2align	4, 0x90
	.type	dptsvx_,@function
dptsvx_:                                # @dptsvx_
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%esi, %esi
	setg	%al
	andb	%dl, %al
	cmpb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then16
	movl	$0, (%rdi)
.LBB0_2:                                # %if.end35
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	dlanst_@PLT
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	dptsvx_, .Lfunc_end0-dptsvx_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
