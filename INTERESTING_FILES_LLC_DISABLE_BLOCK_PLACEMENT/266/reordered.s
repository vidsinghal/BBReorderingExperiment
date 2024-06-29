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
	jne	.LBB0_5
# %bb.1:                                # %do.end6
	movl	%edx, %ebp
	callq	s2n_stuffer_read_uint8@PLT
	testb	$1, %bpl
	je	.LBB0_6
# %bb.2:                                # %if.end19
	movl	$0, (%rbx)
.LBB0_3:                                # %common.ret
	xorl	%eax, %eax
.LBB0_4:                                # %common.ret
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_5:                                # %do.body2
	.cfi_def_cfa_offset 32
	movq	$0, (%rbx)
	jmp	.LBB0_3
.LBB0_6:                                # %cleanup89
	movl	$1, %eax
	jmp	.LBB0_4
.Lfunc_end0:
	.size	s2n_cert_status_recv, .Lfunc_end0-s2n_cert_status_recv
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
