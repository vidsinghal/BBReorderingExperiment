	.text
	.file	""
	.globl	hwloc_distances_remove_by_depth # -- Begin function hwloc_distances_remove_by_depth
	.p2align	4, 0x90
	.type	hwloc_distances_remove_by_depth,@function
hwloc_distances_remove_by_depth:        # @hwloc_distances_remove_by_depth
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB0_7
# %bb.1:                                # %while.body.lr.ph
	testq	%rsi, %rsi
	movq	(%rdi), %rax
	je	.LBB0_5
# %bb.2:                                # %while.body.preheader
	movq	%rdi, (%rdi)
.LBB0_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	testb	$1, %al
	jne	.LBB0_3
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%rdi, %rax
	jmp	.LBB0_3
.LBB0_5:                                # %while.body.us
	testb	$1, %al
	jne	.LBB0_7
# %bb.6:                                # %if.then12.us
	movq	%rdi, (%rdi)
.LBB0_7:                                # %while.end
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	hwloc_distances_remove_by_depth, .Lfunc_end0-hwloc_distances_remove_by_depth
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
