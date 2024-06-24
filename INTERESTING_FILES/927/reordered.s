	.text
	.file	""
	.globl	aws_signable_new_canonical_request # -- Begin function aws_signable_new_canonical_request
	.p2align	4, 0x90
	.type	aws_signable_new_canonical_request,@function
aws_signable_new_canonical_request:     # @aws_signable_new_canonical_request
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	aws_mem_acquire_many@PLT
	testq	%rbx, %rbx
	setne	%al
	testb	%bpl, %al
	jne	.LBB0_2
# %bb.1:                                # %do.body
	movq	$0, (%rbx)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	aws_signable_new_canonical_request, .Lfunc_end0-aws_signable_new_canonical_request
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
