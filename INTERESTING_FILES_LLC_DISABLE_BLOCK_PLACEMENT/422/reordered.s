	.text
	.file	""
	.globl	umfpack_di_report_matrix        # -- Begin function umfpack_di_report_matrix
	.p2align	4, 0x90
	.type	umfpack_di_report_matrix,@function
umfpack_di_report_matrix:               # @umfpack_di_report_matrix
# %bb.0:                                # %entry
	testl	%edi, %edi
	setg	%al
	orb	%sil, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then20
	movl	0, %eax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	umfpack_di_report_matrix, .Lfunc_end0-umfpack_di_report_matrix
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
