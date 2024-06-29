	.text
	.file	""
	.globl	s2n_stuffer_read_base64         # -- Begin function s2n_stuffer_read_base64
	.p2align	4, 0x90
	.type	s2n_stuffer_read_base64,@function
s2n_stuffer_read_base64:                # @s2n_stuffer_read_base64
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	$1, %ebx
	testb	$1, %dil
	jne	.LBB0_5
# %bb.1:                                # %lor.lhs.false.preheader
	movq	%rdx, %r14
	movq	%rsi, %r15
	xorl	%ebx, %ebx
.LBB0_2:                                # %lor.lhs.false.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpb	$0, (%r14)
	je	.LBB0_4
# %bb.3:                                # %lor.lhs.false.preheader
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpb	$0, (%r15)
	je	.LBB0_5
.LBB0_4:                                # %do.cond141
                                        #   in Loop: Header=BB0_2 Depth=1
	callq	s2n_calculate_stacktrace@PLT
	jmp	.LBB0_2
.LBB0_5:                                # %common.ret
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	s2n_stuffer_read_base64, .Lfunc_end0-s2n_stuffer_read_base64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
