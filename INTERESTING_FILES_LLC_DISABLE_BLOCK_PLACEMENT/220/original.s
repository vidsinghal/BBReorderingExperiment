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
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.1:                                # %entry
	cmpq	$1, %rsi
	je	.LBB0_4
# %bb.2:                                # %if.end4
	movq	0, %rcx
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	*%rcx
	movl	$0, 0
.LBB0_3:                                # %common.ret
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %if.then2
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
.Lfunc_end0:
	.size	xmlMemFree, .Lfunc_end0-xmlMemFree
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
