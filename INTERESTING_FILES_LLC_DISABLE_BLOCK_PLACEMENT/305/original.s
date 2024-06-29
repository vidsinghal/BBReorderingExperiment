	.text
	.file	""
	.globl	cblas_csyrk                     # -- Begin function cblas_csyrk
	.p2align	4, 0x90
	.type	cblas_csyrk,@function
cblas_csyrk:                            # @cblas_csyrk
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	cmpl	$1, %edi
	je	.LBB0_4
# %bb.1:                                # %entry
	movl	$1, %ebx
	testl	%edi, %edi
	jne	.LBB0_3
.LBB0_2:                                # %common.ret.sink.split
	movl	%ebx, (%rsi)
.LBB0_3:                                # %common.ret
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %if.then
	.cfi_def_cfa_offset 32
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	movq	%rsi, %r14
	callq	cblas_xerbla@PLT
	movq	%r14, %rsi
	jmp	.LBB0_2
.Lfunc_end0:
	.size	cblas_csyrk, .Lfunc_end0-cblas_csyrk
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
