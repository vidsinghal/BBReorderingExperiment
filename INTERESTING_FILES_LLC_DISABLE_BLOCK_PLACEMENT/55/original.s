	.text
	.file	""
	.globl	MESH_RecvMesh                   # -- Begin function MESH_RecvMesh
	.p2align	4, 0x90
	.type	MESH_RecvMesh,@function
MESH_RecvMesh:                          # @MESH_RecvMesh
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movl	%edi, %ebp
	callq	MESH_Recv_MetaData@PLT
	movl	(%r15), %edi
	callq	MESH_Recv_Vertices@PLT
	movl	(%r15), %edi
	callq	MESH_Recv_VertexCoords@PLT
	movl	(%r14), %edi
	movl	(%rbx), %esi
	movl	(%r15), %edx
	callq	MESH_Recv_NonVertexEntities@PLT
	testl	%ebp, %ebp
	je	.LBB0_2
# %bb.1:                                # %if.then
	movl	0, %eax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	MESH_RecvMesh, .Lfunc_end0-MESH_RecvMesh
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
