	.text
	.file	""
	.globl	aws_signing_result_get_property # -- Begin function aws_signing_result_get_property
	.p2align	4, 0x90
	.type	aws_signing_result_get_property,@function
aws_signing_result_get_property:        # @aws_signing_result_get_property
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	aws_hash_table_find@PLT
	cmpq	$0, (%rbx)
	je	.LBB0_2
# %bb.1:                                # %if.then
	movq	$0, (%rbx)
.LBB0_2:                                # %if.end
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	aws_signing_result_get_property, .Lfunc_end0-aws_signing_result_get_property
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
