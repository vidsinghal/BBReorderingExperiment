	.text
	.file	""
	.globl	MFs_AreSame_R2                  # -- Begin function MFs_AreSame_R2
	.p2align	4, 0x90
	.type	MFs_AreSame_R2,@function
MFs_AreSame_R2:                         # @MFs_AreSame_R2
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
	movl	$1, %ebx
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.else
	movl	%esi, %r14d
	xorl	%ebx, %ebx
	xorl	%edi, %edi
	callq	MF_Vertices@PLT
	callq	List_Locate@PLT
                                        # kill: def $eax killed $eax def $rax
	leal	(%rax,%r14), %edi
	callq	List_Entry@PLT
	movl	%r14d, %edi
	callq	List_Entry@PLT
.LBB0_2:                                # %common.ret
	movl	%ebx, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	MFs_AreSame_R2, .Lfunc_end0-MFs_AreSame_R2
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
