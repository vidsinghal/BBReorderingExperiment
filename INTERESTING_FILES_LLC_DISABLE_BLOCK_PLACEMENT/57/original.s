	.text
	.file	""
	.globl	vtkexodusII_ex_put_loadbal_param_cc # -- Begin function vtkexodusII_ex_put_loadbal_param_cc
	.p2align	4, 0x90
	.type	vtkexodusII_ex_put_loadbal_param_cc,@function
vtkexodusII_ex_put_loadbal_param_cc:    # @vtkexodusII_ex_put_loadbal_param_cc
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.then25
	xorl	%eax, %eax
	callq	snprintf@PLT
.LBB0_2:                                # %if.end33
	movl	0, %eax
	xorl	%eax, %eax
	callq	snprintf@PLT
.Lfunc_end0:
	.size	vtkexodusII_ex_put_loadbal_param_cc, .Lfunc_end0-vtkexodusII_ex_put_loadbal_param_cc
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
