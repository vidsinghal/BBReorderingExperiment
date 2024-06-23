	.text
	.file	""
	.globl	umfpack_zl_report_triplet       # -- Begin function umfpack_zl_report_triplet
	.p2align	4, 0x90
	.type	umfpack_zl_report_triplet,@function
umfpack_zl_report_triplet:              # @umfpack_zl_report_triplet
	.cfi_startproc
# %bb.0:                                # %entry
	ucomisd	%xmm0, %xmm0
	setnp	%al
	testb	%sil, %al
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
	.size	umfpack_zl_report_triplet, .Lfunc_end0-umfpack_zl_report_triplet
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
