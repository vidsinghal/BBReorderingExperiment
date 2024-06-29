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
	cmpl	$4, %ebp
	jl	.LBB0_7
# %bb.1:                                # %if.end.i
	je	.LBB0_3
# %bb.2:                                # %do.body3.i
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	_unur_error_x@PLT
.LBB0_3:                                # %do.end7.i
	xorpd	%xmm0, %xmm0
	ucomisd	(%rbx), %xmm0
	jb	.LBB0_8
# %bb.4:                                # %do.body12.i
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
.LBB0_5:                                # %_unur_set_params_meixner.exit
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
.LBB0_6:                                # %_unur_set_params_meixner.exit
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
.LBB0_7:                                # %do.body.i
	.cfi_def_cfa_offset 32
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movl	$1, %r8d
	jmp	.LBB0_6
.LBB0_8:                                # %lor.lhs.false.i
	xorl	%edi, %edi
	xorl	%esi, %esi
	movl	$1, %edx
	jmp	.LBB0_5
.Lfunc_end0:
	.size	unur_distr_meixner, .Lfunc_end0-unur_distr_meixner
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
