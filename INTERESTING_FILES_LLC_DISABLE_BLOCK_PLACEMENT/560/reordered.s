	.text
	.file	""
	.globl	s2n_tls13_extract_secret        # -- Begin function s2n_tls13_extract_secret
	.p2align	4, 0x90
	.type	s2n_tls13_extract_secret,@function
s2n_tls13_extract_secret:               # @s2n_tls13_extract_secret
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testb	$1, %r8b
	je	.LBB0_4
# %bb.1:                                # %do.body38
	movl	$0, (%rdi)
	jmp	.LBB0_3
.LBB0_2:                                # %do.body78
	movq	$0, (%rdi)
.LBB0_3:                                # %common.ret.sink.split
	callq	s2n_calculate_stacktrace@PLT
	movl	$-1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %do.end46
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	testb	$1, 16(%rsp)
	je	.LBB0_2
# %bb.5:                                # %common.ret
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	s2n_tls13_extract_secret, .Lfunc_end0-s2n_tls13_extract_secret
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
