	.text
	.file	""
	.globl	vtkexodusII_ex_get_side_set_node_count # -- Begin function vtkexodusII_ex_get_side_set_node_count
	.p2align	4, 0x90
	.type	vtkexodusII_ex_get_side_set_node_count,@function
vtkexodusII_ex_get_side_set_node_count: # @vtkexodusII_ex_get_side_set_node_count
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.then13
	movl	0, %eax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	vtkexodusII_ex_get_side_set_node_count, .Lfunc_end0-vtkexodusII_ex_get_side_set_node_count
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
