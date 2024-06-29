	.text
	.file	""
	.globl	dh_newctx                       # -- Begin function dh_newctx
	.p2align	4, 0x90
	.type	dh_newctx,@function
dh_newctx:                              # @dh_newctx
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
	movl	%esi, %ebx
	movl	%edi, %ebp
	callq	ossl_prov_is_running@PLT
	testb	$1, %bpl
	je	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_2:                                # %if.end
	movq	0, %rax
	testb	$1, %bl
	je	.LBB0_4
# %bb.3:
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_4:                                # %if.end
	movq	CRYPTO_zalloc@GOTPCREL(%rip), %rax
.LBB0_5:                                # %cleanup
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	dh_newctx, .Lfunc_end0-dh_newctx
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
