	.text
	.file	""
	.globl	xnn_f32_igemm_minmax_ukernel_8x16__avx512f_broadcast # -- Begin function xnn_f32_igemm_minmax_ukernel_8x16__avx512f_broadcast
	.p2align	4, 0x90
	.type	xnn_f32_igemm_minmax_ukernel_8x16__avx512f_broadcast,@function
xnn_f32_igemm_minmax_ukernel_8x16__avx512f_broadcast: # @xnn_f32_igemm_minmax_ukernel_8x16__avx512f_broadcast
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbp
	callq	_mm512_load_ps@PLT
	movq	(%r13), %rax
	movq	(%r12), %r12
	movq	(%r15), %r15
	movq	(%r14), %r14
	movq	(%rbp), %r13
	movss	(%rax), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	callq	_mm512_set1_ps@PLT
	movss	(%r12), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	callq	_mm512_set1_ps@PLT
	movss	(%rbp), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	callq	_mm512_set1_ps@PLT
	movss	(%r15), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	callq	_mm512_set1_ps@PLT
	movss	(%r14), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	callq	_mm512_set1_ps@PLT
	movss	(%r13), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	callq	_mm512_set1_ps@PLT
	testb	$1, %bl
	jne	.LBB0_2
# %bb.1:                                # %if.then225
	movl	$0, 0
.LBB0_2:                                # %common.ret
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	xnn_f32_igemm_minmax_ukernel_8x16__avx512f_broadcast, .Lfunc_end0-xnn_f32_igemm_minmax_ukernel_8x16__avx512f_broadcast
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
