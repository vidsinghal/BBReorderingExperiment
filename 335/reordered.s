	.text
	.file	""
	.globl	axl_dbg                         # -- Begin function axl_dbg
	.p2align	4, 0x90
	.type	axl_dbg,@function
axl_dbg:                                # @axl_dbg
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%edi, %edi
	setg	%al
	testl	%esi, %esi
	setns	%cl
	testb	%cl, %al
	jne	.LBB0_2
# %bb.1:                                # %if.end12
	retq
.LBB0_2:                                # %if.then4
	xorl	%eax, %eax
	jmp	fprintf@PLT                     # TAILCALL
.Lfunc_end0:
	.size	axl_dbg, .Lfunc_end0-axl_dbg
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
