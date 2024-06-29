	.text
	.file	""
	.globl	MESH_Recv_Attribute             # -- Begin function MESH_Recv_Attribute
	.p2align	4, 0x90
	.type	MESH_Recv_Attribute,@function
MESH_Recv_Attribute:                    # @MESH_Recv_Attribute
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$5, %edi
	je	.LBB0_4
# %bb.1:                                # %entry
	cmpl	$1, %edi
	je	.LBB0_3
# %bb.2:                                # %sw.bb
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	MESH_Num_Vertices@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	xorl	%eax, %eax
	retq
.LBB0_3:                                # %sw.bb5
	movl	0, %eax
.LBB0_4:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	MESH_Recv_Attribute, .Lfunc_end0-MESH_Recv_Attribute
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
