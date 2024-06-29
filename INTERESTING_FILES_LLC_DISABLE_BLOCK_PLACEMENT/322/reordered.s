	.text
	.file	""
	.globl	xnn_f32_vmax_ukernel__sse_x4    # -- Begin function xnn_f32_vmax_ukernel__sse_x4
	.p2align	4, 0x90
	.type	xnn_f32_vmax_ukernel__sse_x4,@function
xnn_f32_vmax_ukernel__sse_x4:           # @xnn_f32_vmax_ukernel__sse_x4
	.cfi_startproc
# %bb.0:                                # %entry
	cmpq	$15, %rdi
	ja	.LBB0_5
.LBB0_1:                                # %for.end
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.2:                                # %if.then14
	movl	$0, 0
	addq	$8, %rsi
.LBB0_3:                                # %if.end
	testb	$1, %dl
	je	.LBB0_11
# %bb.4:                                # %if.end20
	retq
.LBB0_5:                                # %for.body.preheader
	leaq	-16(%rdi), %rax
	movl	%eax, %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$7, %ecx
	je	.LBB0_9
# %bb.6:                                # %for.body.prol.preheader
	shll	$4, %ecx
	xorl	%r8d, %r8d
.LBB0_7:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	addq	$16, %r8
	cmpq	%r8, %rcx
	jne	.LBB0_7
# %bb.8:                                # %for.body.prol.loopexit.loopexit
	subq	%r8, %rdi
.LBB0_9:                                # %for.body.prol.loopexit
	cmpq	$112, %rax
	jb	.LBB0_1
.LBB0_10:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addq	$-128, %rdi
	cmpq	$15, %rdi
	ja	.LBB0_10
	jmp	.LBB0_1
.LBB0_11:                               # %if.then19
	movq	%rsi, %rdi
	jmp	_mm_store_ss@PLT                # TAILCALL
.Lfunc_end0:
	.size	xnn_f32_vmax_ukernel__sse_x4, .Lfunc_end0-xnn_f32_vmax_ukernel__sse_x4
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
