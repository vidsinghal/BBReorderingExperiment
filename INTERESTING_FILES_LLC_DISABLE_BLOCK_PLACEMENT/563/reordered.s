	.text
	.file	""
	.globl	s2n_stuffer_read_base64         # -- Begin function s2n_stuffer_read_base64
	.p2align	4, 0x90
	.type	s2n_stuffer_read_base64,@function
s2n_stuffer_read_base64:                # @s2n_stuffer_read_base64
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$1, %eax
	testb	$1, %dil
	jne	.LBB0_7
# %bb.1:                                # %lor.lhs.false.preheader
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %rbx
	movq	%rsi, %r14
	xorl	%eax, %eax
	cmpb	$0, (%rdx)
	je	.LBB0_3
# %bb.2:                                # %lor.lhs.false.preheader
	cmpb	$0, (%r14)
	je	.LBB0_6
.LBB0_3:                                # %do.cond141
                                        # =>This Inner Loop Header: Depth=1
	callq	s2n_calculate_stacktrace@PLT
	cmpb	$0, (%rbx)
	je	.LBB0_3
# %bb.4:                                # %do.cond141
                                        #   in Loop: Header=BB0_3 Depth=1
	cmpb	$0, (%r14)
	jne	.LBB0_3
# %bb.5:
	xorl	%eax, %eax
.LBB0_6:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB0_7:                                # %common.ret
	retq
.Lfunc_end0:
	.size	s2n_stuffer_read_base64, .Lfunc_end0-s2n_stuffer_read_base64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
