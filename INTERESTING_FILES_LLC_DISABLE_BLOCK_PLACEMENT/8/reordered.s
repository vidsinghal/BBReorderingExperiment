	.text
	.file	""
	.globl	bli_strmv_unf_var2              # -- Begin function bli_strmv_unf_var2
	.p2align	4, 0x90
	.type	bli_strmv_unf_var2,@function
bli_strmv_unf_var2:                     # @bli_strmv_unf_var2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	callq	bli_is_upper@PLT
	andb	%bl, %al
	cmpb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %for.body
	movq	0, %rax
.LBB0_2:                                # %common.ret
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	bli_strmv_unf_var2, .Lfunc_end0-bli_strmv_unf_var2
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
