	.text
	.file	""
	.globl	unur_distr_meixner              # -- Begin function unur_distr_meixner
	.p2align	4, 0x90
	.type	unur_distr_meixner,@function
unur_distr_meixner:                     # @unur_distr_meixner
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movl	%esi, %ebp
	movq	%rdi, %rbx
	callq	unur_distr_cont_new@PLT
	movl	$0, (%r14)
	cmpl	$3, %ebp
	jg	.LBB0_2
# %bb.1:                                # %do.body.i
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	jmp	.LBB0_8
.LBB0_2:                                # %if.end.i
	cmpl	$4, %ebp
	je	.LBB0_4
# %bb.3:                                # %do.body3.i
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_unur_error_x@PLT
.LBB0_4:                                # %do.end7.i
	xorpd	%xmm0, %xmm0
	ucomisd	(%rbx), %xmm0
	jae	.LBB0_6
# %bb.5:                                # %lor.lhs.false.i
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$1, %edx
	jmp	.LBB0_7
.LBB0_6:                                # %do.body12.i
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
.LBB0_7:                                # %_unur_set_params_meixner.exit
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
.LBB0_8:                                # %_unur_set_params_meixner.exit
	xorl	%r9d, %r9d
	callq	_unur_error_x@PLT
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	unur_distr_meixner, .Lfunc_end0-unur_distr_meixner
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
