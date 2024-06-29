	.text
	.file	""
	.globl	copy_nodes                      # -- Begin function copy_nodes
	.p2align	4, 0x90
	.type	copy_nodes,@function
copy_nodes:                             # @copy_nodes
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	testb	$1, %dil
	je	.LBB0_2
# %bb.1:                                # %for.body.us.preheader
	movl	$0, 0
	movq	(%rbx), %rdi
	callq	mknod@PLT
	movl	$0, (%rbx)
	movl	$0, 0
	movq	(%rbx), %rdi
	callq	mknod@PLT
	movl	$0, (%rbx)
	movl	$0, 0
	movq	(%rbx), %rdi
	callq	mknod@PLT
	movl	$0, (%rbx)
	movl	$0, 0
	movq	(%rbx), %rdi
	callq	mknod@PLT
	movl	$0, (%rbx)
	movl	$0, 0
	movq	(%rbx), %rdi
	callq	mknod@PLT
	movl	$0, (%rbx)
	movl	$0, 0
	jmp	.LBB0_3
.LBB0_2:                                # %for.body.preheader
	movq	(%rbx), %rdi
	callq	mknod@PLT
	movl	$0, (%rbx)
	movq	(%rbx), %rdi
	callq	mknod@PLT
	movl	$0, (%rbx)
	movq	(%rbx), %rdi
	callq	mknod@PLT
	movl	$0, (%rbx)
	movq	(%rbx), %rdi
	callq	mknod@PLT
	movl	$0, (%rbx)
	movq	(%rbx), %rdi
	callq	mknod@PLT
	movl	$0, (%rbx)
.LBB0_3:                                # %for.end
	movq	(%rbx), %rdi
	callq	mknod@PLT
	movl	$0, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	copy_nodes, .Lfunc_end0-copy_nodes
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
