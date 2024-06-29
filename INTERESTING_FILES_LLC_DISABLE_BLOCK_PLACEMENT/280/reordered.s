	.text
	.file	""
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function xnn_x16_transpose_ukernel__8x8_reuse_switch_sse2
.LCPI0_0:
	.quad	1                               # 0x1
	.quad	1                               # 0x1
	.text
	.globl	xnn_x16_transpose_ukernel__8x8_reuse_switch_sse2
	.p2align	4, 0x90
	.type	xnn_x16_transpose_ukernel__8x8_reuse_switch_sse2,@function
xnn_x16_transpose_ukernel__8x8_reuse_switch_sse2: # @xnn_x16_transpose_ukernel__8x8_reuse_switch_sse2
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	min@PLT
	cmpq	$1, %rbx
	je	.LBB0_3
# %bb.1:                                # %entry
	testq	%rbx, %rbx
	jne	.LBB0_4
# %bb.2:                                # %sw.bb60
	movaps	.LCPI0_0(%rip), %xmm0           # xmm0 = [1,1]
	jmp	.LBB0_5
.LBB0_3:                                # %sw.bb58
	movl	$1, %ebx
	movaps	.LCPI0_0(%rip), %xmm0           # xmm0 = [1,1]
	jmp	.LBB0_5
.LBB0_4:                                # %sw.bb
	xorps	%xmm0, %xmm0
.LBB0_5:                                # %common.ret
	movaps	%xmm0, (%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	xnn_x16_transpose_ukernel__8x8_reuse_switch_sse2, .Lfunc_end0-xnn_x16_transpose_ukernel__8x8_reuse_switch_sse2
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
