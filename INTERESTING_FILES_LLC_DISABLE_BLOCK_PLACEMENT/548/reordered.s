	.text
	.file	""
	.globl	xnn_qs8_dwconv_minmax_fp32_ukernel_up8x9__sse41_mul16_add16 # -- Begin function xnn_qs8_dwconv_minmax_fp32_ukernel_up8x9__sse41_mul16_add16
	.p2align	4, 0x90
	.type	xnn_qs8_dwconv_minmax_fp32_ukernel_up8x9__sse41_mul16_add16,@function
xnn_qs8_dwconv_minmax_fp32_ukernel_up8x9__sse41_mul16_add16: # @xnn_qs8_dwconv_minmax_fp32_ukernel_up8x9__sse41_mul16_add16
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
	movq	%rdi, %rbx
	testb	$1, %dl
	jne	.LBB0_2
# %bb.1:                                # %for.end
	callq	_mm_loadu_si128@PLT
	movsd	(%rbx), %xmm0                   # xmm0 = mem[0],zero
	callq	_mm_cvtepi8_epi16@PLT
	movsd	(%rbx), %xmm0                   # xmm0 = mem[0],zero
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	_mm_cvtepi8_epi16@PLT           # TAILCALL
.LBB0_2:                                # %for.body
	.cfi_def_cfa_offset 32
	movq	(%rsi), %r14
	movsd	(%rbx), %xmm0                   # xmm0 = mem[0],zero
	callq	_mm_cvtepi8_epi16@PLT
	movsd	(%rbx), %xmm0                   # xmm0 = mem[0],zero
	callq	_mm_cvtepi8_epi16@PLT
	movsd	(%rbx), %xmm0                   # xmm0 = mem[0],zero
	callq	_mm_cvtepi8_epi16@PLT
	movsd	(%rbx), %xmm0                   # xmm0 = mem[0],zero
	callq	_mm_cvtepi8_epi16@PLT
	movsd	(%r14), %xmm0                   # xmm0 = mem[0],zero
	callq	_mm_cvtepi8_epi16@PLT
	movsd	(%rbx), %xmm0                   # xmm0 = mem[0],zero
	callq	_mm_cvtepi8_epi16@PLT
	movsd	(%rbx), %xmm0                   # xmm0 = mem[0],zero
	callq	_mm_cvtepi8_epi16@PLT
.Lfunc_end0:
	.size	xnn_qs8_dwconv_minmax_fp32_ukernel_up8x9__sse41_mul16_add16, .Lfunc_end0-xnn_qs8_dwconv_minmax_fp32_ukernel_up8x9__sse41_mul16_add16
	.cfi_endproc
                                        # -- End function
	.globl	_mm_loadl_epi64                 # -- Begin function _mm_loadl_epi64
	.p2align	4, 0x90
	.type	_mm_loadl_epi64,@function
_mm_loadl_epi64:                        # @_mm_loadl_epi64
# %bb.0:                                # %entry
	movsd	(%rdi), %xmm0                   # xmm0 = mem[0],zero
	retq
.Lfunc_end1:
	.size	_mm_loadl_epi64, .Lfunc_end1-_mm_loadl_epi64
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
