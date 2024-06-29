	.text
	.file	""
	.globl	MF_Set_GInfo_Auto_R4            # -- Begin function MF_Set_GInfo_Auto_R4
	.p2align	4, 0x90
	.type	MF_Set_GInfo_Auto_R4,@function
MF_Set_GInfo_Auto_R4:                   # @MF_Set_GInfo_Auto_R4
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movl	%esi, %ebp
	movl	%edi, %r14d
	callq	List_Num_Entries@PLT
	movq	0, %rax
	movl	0, %eax
	movl	0, %eax
	testb	$1, %r14b
	jne	.LBB0_5
# %bb.1:                                # %for.end
	testb	$1, %bpl
	jne	.LBB0_4
# %bb.2:                                # %lor.lhs.false18
	movl	0, %eax
	testb	$1, %bl
	jne	.LBB0_4
# %bb.3:                                # %if.else22
	movl	0, %eax
.LBB0_4:                                # %if.end34
	movl	$0, 0
.LBB0_5:                                # %for.body
	movq	0, %rax
	movl	0, %eax
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	MF_Set_GInfo_Auto_R4, .Lfunc_end0-MF_Set_GInfo_Auto_R4
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
