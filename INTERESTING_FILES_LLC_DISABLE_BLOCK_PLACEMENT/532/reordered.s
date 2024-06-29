	.text
	.file	""
	.globl	NI_Correlate1D                  # -- Begin function NI_Correlate1D
	.p2align	4, 0x90
	.type	NI_Correlate1D,@function
NI_Correlate1D:                         # @NI_Correlate1D
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	$0, (%rdi)
	movq	(%rsi), %rax
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*(%rax)
	testb	$1, %r14b
	jne	.LBB0_2
# %bb.1:                                # %if.end30
	movl	0, %eax
	movq	%rbx, (%rsp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	NI_InitLineBuffer@PLT
	movq	%rbx, (%rsp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	NI_InitLineBuffer@PLT
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	NI_Correlate1D, .Lfunc_end0-NI_Correlate1D
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
