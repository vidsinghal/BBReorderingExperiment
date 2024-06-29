	.text
	.file	""
	.globl	s2n_cert_status_recv            # -- Begin function s2n_cert_status_recv
	.p2align	4, 0x90
	.type	s2n_cert_status_recv,@function
s2n_cert_status_recv:                   # @s2n_cert_status_recv
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
	testb	$1, %sil
	je	.LBB0_2
# %bb.1:                                # %do.body2
	movq	$0, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_2:                                # %do.end6
	movl	%edx, %ebp
	callq	s2n_stuffer_read_uint8@PLT
	testb	$1, %bpl
	je	.LBB0_4
# %bb.3:                                # %if.end19
	movl	$0, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_4:                                # %cleanup89
	movl	$1, %eax
.LBB0_5:                                # %common.ret
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	s2n_cert_status_recv, .Lfunc_end0-s2n_cert_status_recv
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
