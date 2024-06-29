	.text
	.file	""
	.globl	N_VNewEmpty_SensWrapper         # -- Begin function N_VNewEmpty_SensWrapper
	.p2align	4, 0x90
	.type	N_VNewEmpty_SensWrapper,@function
N_VNewEmpty_SensWrapper:                # @N_VNewEmpty_SensWrapper
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.end
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdx, %r14
	movq	%rsi, %rbx
	callq	N_VNewEmpty@PLT
	movq	$0, (%r14)
	movq	(%rbx), %rax
	movq	$0, 16(%rax)
	movq	(%rbx), %rax
	movq	$0, 24(%rax)
	movq	(%rbx), %rax
	movq	$0, 80(%rax)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	N_VNewEmpty_SensWrapper, .Lfunc_end0-N_VNewEmpty_SensWrapper
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
