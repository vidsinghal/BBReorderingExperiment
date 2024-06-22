	.text
	.file	""
	.globl	bli_caxpyf_zen_int_4            # -- Begin function bli_caxpyf_zen_int_4
	.p2align	4, 0x90
	.type	bli_caxpyf_zen_int_4,@function
bli_caxpyf_zen_int_4:                   # @bli_caxpyf_zen_int_4
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %lor.lhs.false
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	0, %rax
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	pushq	$0
	.cfi_adjust_cfa_offset 8
	pushq	$0
	.cfi_adjust_cfa_offset 8
	callq	*%rax
	addq	$16, %rsp
	.cfi_adjust_cfa_offset -16
	popq	%rax
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	bli_caxpyf_zen_int_4, .Lfunc_end0-bli_caxpyf_zen_int_4
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
