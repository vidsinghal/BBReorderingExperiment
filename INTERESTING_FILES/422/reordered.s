	.text
	.file	""
	.globl	umfpack_di_report_matrix        # -- Begin function umfpack_di_report_matrix
	.p2align	4, 0x90
	.type	umfpack_di_report_matrix,@function
umfpack_di_report_matrix:               # @umfpack_di_report_matrix
	.cfi_startproc
# %bb.0:                                # %entry
	ucomisd	%xmm0, %xmm0
	setnp	%al
	testl	%esi, %esi
	sets	%cl
	testb	%cl, %al
	jne	.LBB0_2
# %bb.1:                                # %if.end
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdi, %r8
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	*(%r8)
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	umfpack_di_report_matrix, .Lfunc_end0-umfpack_di_report_matrix
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
