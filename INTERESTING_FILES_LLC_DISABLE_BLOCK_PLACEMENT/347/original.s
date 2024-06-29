	.text
	.file	""
	.globl	gt_pck_count_nodes_dfs          # -- Begin function gt_pck_count_nodes_dfs
	.p2align	4, 0x90
	.type	gt_pck_count_nodes_dfs,@function
gt_pck_count_nodes_dfs:                 # @gt_pck_count_nodes_dfs
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
	movl	%ecx, %ebp
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	%rsp, %rax
	movq	%rax, (%rdi)
	callq	gt_malloc_mem@PLT
	movq	(%rbx), %rax
	movq	10280(%rsp), %rcx
	movq	$0, (%rsp)
	leaq	(%rax,%rax,4), %rax
	movq	$0, (%rcx,%rax,8)
	movq	$0, (%r14)
	movq	$0, (%r15)
	movq	$0, (%rbx)
	movl	$0, (%r15)
	movl	$0, (%rbx)
	testb	$1, %bpl
	je	.LBB0_2
# %bb.1:                                # %if.then71
	movq	$0, (%rbx)
.LBB0_2:                                # %while.cond
	xorl	%eax, %eax
	callq	gt_log_log@PLT
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
	.size	gt_pck_count_nodes_dfs, .Lfunc_end0-gt_pck_count_nodes_dfs
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
