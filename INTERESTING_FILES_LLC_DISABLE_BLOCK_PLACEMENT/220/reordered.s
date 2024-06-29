	.text
	.file	""
	.globl	xmlMemFree                      # -- Begin function xmlMemFree
	.p2align	4, 0x90
	.type	xmlMemFree,@function
xmlMemFree:                             # @xmlMemFree
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	cmpq	$1, %rsi
	je	.LBB0_3
# %bb.1:                                # %entry
	testq	%rsi, %rsi
	jne	.LBB0_4
# %bb.2:                                # %common.ret
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_3:                                # %if.then2
	.cfi_def_cfa_offset 16
	movq	%rdi, %rbx
	callq	__xmlGenericError@PLT
	movq	$0, 0
	movq	0, %rax
	movq	(%rbx), %rbx
	callq	__xmlGenericErrorContext@PLT
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rbx, %rcx
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmpq	*%rcx                           # TAILCALL
.LBB0_4:                                # %if.end4
	.cfi_def_cfa_offset 16
	movq	0, %rcx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	*%rcx
	movl	$0, 0
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	xmlMemFree, .Lfunc_end0-xmlMemFree
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
