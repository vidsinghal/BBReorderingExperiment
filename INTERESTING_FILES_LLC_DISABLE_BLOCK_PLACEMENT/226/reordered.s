	.text
	.file	""
	.globl	bli_caxpyf_zen_int_4            # -- Begin function bli_caxpyf_zen_int_4
	.p2align	4, 0x90
	.type	bli_caxpyf_zen_int_4,@function
bli_caxpyf_zen_int_4:                   # @bli_caxpyf_zen_int_4
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %r8b
	jne	.LBB0_2
# %bb.1:                                # %if.end4
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%r9, %r14
	movq	%rcx, %rbx
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r13
	callq	bli_is_noconj@PLT
	movss	(%r12), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	(%r13), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	mulss	(%r14), %xmm1
	mulss	(%r15), %xmm0
	addss	%xmm1, %xmm0
	addss	(%rbx), %xmm0
	movss	%xmm0, (%rbx)
	movl	$0, 4(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	bli_caxpyf_zen_int_4, .Lfunc_end0-bli_caxpyf_zen_int_4
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
