	.text
	.file	""
	.globl	s2n_tls13_keys_init             # -- Begin function s2n_tls13_keys_init
	.p2align	4, 0x90
	.type	s2n_tls13_keys_init,@function
s2n_tls13_keys_init:                    # @s2n_tls13_keys_init
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%edi, %edi
	sets	%al
	testb	%sil, %al
	je	.LBB0_2
# %bb.1:                                # %do.body24
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$1, %edi
	callq	s2n_blob_init@PLT
	xorl	%edi, %edi
	callq	s2n_blob_init@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	s2n_tls13_keys_init, .Lfunc_end0-s2n_tls13_keys_init
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
