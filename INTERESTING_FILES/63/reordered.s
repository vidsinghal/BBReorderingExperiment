	.text
	.file	""
	.globl	MFs_AreSame_R2                  # -- Begin function MFs_AreSame_R2
	.p2align	4, 0x90
	.type	MFs_AreSame_R2,@function
MFs_AreSame_R2:                         # @MFs_AreSame_R2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:                                # %if.else
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	callq	MF_Vertices@PLT
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:
	.cfi_def_cfa_offset 16
	movl	$1, %ebx
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	MFs_AreSame_R2, .Lfunc_end0-MFs_AreSame_R2
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
