	.text
	.file	""
	.globl	ts_tree_cursor_goto_parent      # -- Begin function ts_tree_cursor_goto_parent
	.p2align	4, 0x90
	.type	ts_tree_cursor_goto_parent,@function
ts_tree_cursor_goto_parent:             # @ts_tree_cursor_goto_parent
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	xorl	%ebp, %ebp
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	ts_subtree_visible@PLT
	testb	$1, %al
	jne	.LBB0_3
# %bb.2:                                # %cleanup24
                                        #   in Loop: Header=BB0_1 Depth=1
	incl	%ebp
	jmp	.LBB0_1
.LBB0_3:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	%ebp, (%rbx)
	incl	%ebp
	jmp	.LBB0_1
.Lfunc_end0:
	.size	ts_tree_cursor_goto_parent, .Lfunc_end0-ts_tree_cursor_goto_parent
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
