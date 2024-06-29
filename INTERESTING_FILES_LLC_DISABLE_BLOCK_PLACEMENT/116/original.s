	.text
	.file	""
	.globl	vtkexodusII_ex_get_side_set_node_count # -- Begin function vtkexodusII_ex_get_side_set_node_count
	.p2align	4, 0x90
	.type	vtkexodusII_ex_get_side_set_node_count,@function
vtkexodusII_ex_get_side_set_node_count: # @vtkexodusII_ex_get_side_set_node_count
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	%edx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	pthread_once@PLT
	movl	0, %eax
	movq	0, %rax
	movl	$0, (%r14)
	movl	$0, (%r15)
	movl	$0, 0
	movq	0, %rax
	xorl	%edi, %edi
	callq	vtkexodusII_ex_get_err@PLT
	testl	%ebx, %ebx
	je	.LBB0_2
# %bb.1:                                # %entry
	cmpl	$-1006, %ebx                    # imm = 0xFC12
	xorl	%eax, %eax
	callq	snprintf@PLT
.LBB0_2:                                # %if.end48
	callq	vtkexodusII_ex_inquire_int@PLT
.Lfunc_end0:
	.size	vtkexodusII_ex_get_side_set_node_count, .Lfunc_end0-vtkexodusII_ex_get_side_set_node_count
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
