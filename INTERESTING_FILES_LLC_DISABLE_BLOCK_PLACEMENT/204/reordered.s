	.text
	.file	""
	.globl	vtkexodusII_ex_get_names        # -- Begin function vtkexodusII_ex_get_names
	.p2align	4, 0x90
	.type	vtkexodusII_ex_get_names,@function
vtkexodusII_ex_get_names:               # @vtkexodusII_ex_get_names
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testb	$1, %sil
	jne	.LBB0_6
# %bb.1:                                # %sw.default
	movl	0, %eax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_3:                                # %for.body.lr.ph
	.cfi_def_cfa_offset 16
	cmpl	$1, %ebx
	je	.LBB0_5
.LBB0_4:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movl	0, %eax
	jmp	.LBB0_4
.LBB0_5:                                # %for.body
	movl	0, %eax
	movl	$0, 0
	jmp	.LBB0_2
.LBB0_6:                                # %if.then17
	movl	%edi, %ebx
	callq	calloc@PLT
	testl	%ebx, %ebx
	jg	.LBB0_3
# %bb.7:                                # %for.cond.cleanup
	movl	$0, 0
	jmp	.LBB0_2
.Lfunc_end0:
	.size	vtkexodusII_ex_get_names, .Lfunc_end0-vtkexodusII_ex_get_names
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
