	.text
	.file	""
	.globl	libxsmm_dnn_create_optimizer    # -- Begin function libxsmm_dnn_create_optimizer
	.p2align	4, 0x90
	.type	libxsmm_dnn_create_optimizer,@function
libxsmm_dnn_create_optimizer:           # @libxsmm_dnn_create_optimizer
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %eax
	testb	$1, %sil
	je	.LBB0_3
# %bb.1:                                # %if.then4
	callq	malloc@PLT
	testq	%rbx, %rbx
	jne	.LBB0_4
# %bb.2:
	xorl	%eax, %eax
.LBB0_3:                                # %if.end65
	movl	%eax, (%rbx)
	jmp	.LBB0_5
.LBB0_4:                                # %if.then6
	movq	32, %rax
	movq	%rax, 32(%rbx)
	movq	24, %rax
	movq	%rax, 24(%rbx)
	movq	16, %rax
	movq	%rax, 16(%rbx)
	movq	0, %rax
	movq	8, %rcx
	movq	%rcx, 8(%rbx)
	movq	%rax, (%rbx)
.LBB0_5:                                # %common.ret
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	libxsmm_dnn_create_optimizer, .Lfunc_end0-libxsmm_dnn_create_optimizer
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
