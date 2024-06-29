	.text
	.file	""
	.globl	gt_splitter_split               # -- Begin function gt_splitter_split
	.p2align	4, 0x90
	.type	gt_splitter_split,@function
gt_splitter_split:                      # @gt_splitter_split
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dl
	je	.LBB0_2
# %bb.1:                                # %while.end
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gt_dynalloc@PLT
	movq	(%rbx), %rax
	movq	(%r14), %rcx
	movq	$0, 8(%rbx)
	movq	$0, (%rax,%rcx,8)
	movq	$0, (%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	gt_splitter_split, .Lfunc_end0-gt_splitter_split
	.cfi_endproc
                                        # -- End function
	.globl	gt_splitter_split_non_empty     # -- Begin function gt_splitter_split_non_empty
	.p2align	4, 0x90
	.type	gt_splitter_split_non_empty,@function
gt_splitter_split_non_empty:            # @gt_splitter_split_non_empty
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	strchr@PLT
	movb	$0, (%rbx)
	movq	(%r14), %rax
	movq	(%rbx), %rcx
	movq	$0, 8(%r14)
	movq	$0, (%rax,%rcx,8)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	gt_splitter_split_non_empty, .Lfunc_end1-gt_splitter_split_non_empty
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
