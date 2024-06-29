	.text
	.file	""
	.globl	FLA_Repart_2x1_to_3x1_check     # -- Begin function FLA_Repart_2x1_to_3x1_check
	.p2align	4, 0x90
	.type	FLA_Repart_2x1_to_3x1_check,@function
FLA_Repart_2x1_to_3x1_check:            # @FLA_Repart_2x1_to_3x1_check
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	movq	48, %rax
	movq	%rax, 48(%rsp)
	movups	0, %xmm0
	movups	16, %xmm1
	movups	32, %xmm2
	movups	%xmm2, 32(%rsp)
	movups	%xmm1, 16(%rsp)
	movups	%xmm0, (%rsp)
	callq	FLA_Check_valid_object_datatype@PLT
	cmpl	$1, %ebx
	je	.LBB0_4
# %bb.1:                                # %entry
	testl	%ebx, %ebx
	jne	.LBB0_3
.LBB0_2:                                # %common.ret.sink.split
	callq	FLA_Check_error_code_helper@PLT
.LBB0_3:                                # %common.ret
	xorl	%eax, %eax
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %if.then15
	.cfi_def_cfa_offset 80
	movl	0, %eax
	jmp	.LBB0_2
.Lfunc_end0:
	.size	FLA_Repart_2x1_to_3x1_check, .Lfunc_end0-FLA_Repart_2x1_to_3x1_check
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
