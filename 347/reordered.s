	.text
	.file	""
	.globl	gt_pck_count_nodes_dfs          # -- Begin function gt_pck_count_nodes_dfs
	.p2align	4, 0x90
	.type	gt_pck_count_nodes_dfs,@function
gt_pck_count_nodes_dfs:                 # @gt_pck_count_nodes_dfs
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testb	$1, %sil
	je	.LBB0_2
# %bb.1:                                # %if.then71
	movq	$0, (%rdi)
	.p2align	4, 0x90
.LBB0_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%edi, %edi
	callq	visit_count_children@PLT
	jmp	.LBB0_2
.Lfunc_end0:
	.size	gt_pck_count_nodes_dfs, .Lfunc_end0-gt_pck_count_nodes_dfs
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
