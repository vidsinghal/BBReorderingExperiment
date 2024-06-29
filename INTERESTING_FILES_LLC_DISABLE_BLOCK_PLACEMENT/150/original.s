	.text
	.file	""
	.globl	gt_bitPackStringInt64_unit_test # -- Begin function gt_bitPackStringInt64_unit_test
	.p2align	4, 0x90
	.type	gt_bitPackStringInt64_unit_test,@function
gt_bitPackStringInt64_unit_test:        # @gt_bitPackStringInt64_unit_test
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_2
# %bb.1:                                # %for.body27
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	callq	gt_log_log@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %cleanup160
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	gt_bitPackStringInt64_unit_test, .Lfunc_end0-gt_bitPackStringInt64_unit_test
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
