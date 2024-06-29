	.text
	.file	""
	.globl	ztfsm_                          # -- Begin function ztfsm_
	.p2align	4, 0x90
	.type	ztfsm_,@function
ztfsm_:                                 # @ztfsm_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	lsame_@PLT
	callq	lsame_@PLT
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	ztfsm_, .Lfunc_end0-ztfsm_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
