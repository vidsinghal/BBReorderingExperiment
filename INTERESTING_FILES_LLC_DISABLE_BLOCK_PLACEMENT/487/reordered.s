	.text
	.file	""
	.globl	vtkexodusII_ex_add_attr         # -- Begin function vtkexodusII_ex_add_attr
	.p2align	4, 0x90
	.type	vtkexodusII_ex_add_attr,@function
vtkexodusII_ex_add_attr:                # @vtkexodusII_ex_add_attr
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	callq	vtkexodusII_ex_get_err@PLT
	cmpl	$-1006, %ebx                    # imm = 0xFC12
	je	.LBB0_3
# %bb.1:                                # %entry
	testl	%ebx, %ebx
	je	.LBB0_4
# %bb.2:                                # %if.end31
	xorl	%edi, %edi
	callq	vtkexodusII_ex_name_of_object@PLT
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_3:                                # %if.then23
	.cfi_def_cfa_offset 16
	xorl	%edi, %edi
	callq	vtkexodusII_ex_name_of_object@PLT
.LBB0_4:                                # %sw.bb
	callq	vtkexodusII_ex__catstr@PLT
.Lfunc_end0:
	.size	vtkexodusII_ex_add_attr, .Lfunc_end0-vtkexodusII_ex_add_attr
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
