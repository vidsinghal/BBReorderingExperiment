	.text
	.file	""
	.globl	s2n_ktls_retrieve_file_descriptor # -- Begin function s2n_ktls_retrieve_file_descriptor
	.p2align	4, 0x90
	.type	s2n_ktls_retrieve_file_descriptor,@function
s2n_ktls_retrieve_file_descriptor:      # @s2n_ktls_retrieve_file_descriptor
	.cfi_startproc
# %bb.0:                                # %entry
	notb	%sil
	testq	%rdi, %rdi
	setne	%al
	orb	%sil, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %do.body11
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	s2n_debug_str@GOTPCREL(%rip), %rax
	movq	$0, (%rax)
	movl	$0, (%rdx)
	callq	s2n_calculate_stacktrace@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	s2n_ktls_retrieve_file_descriptor, .Lfunc_end0-s2n_ktls_retrieve_file_descriptor
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
