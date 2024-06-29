	.text
	.file	""
	.globl	bli_cgemmtrsm3m1_l_zen2_ref     # -- Begin function bli_cgemmtrsm3m1_l_zen2_ref
	.p2align	4, 0x90
	.type	bli_cgemmtrsm3m1_l_zen2_ref,@function
bli_cgemmtrsm3m1_l_zen2_ref:            # @bli_cgemmtrsm3m1_l_zen2_ref
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	andq	$-64, %rsp
	subq	$128, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, %r12
	xorl	%edi, %edi
	vmovss	%xmm0, 68(%rsp)                 # 4-byte Spill
	movq	%rdx, %rbx
	movq	%rsi, %r15
	callq	bli_cntx_get_l3_nat_ukr_dt@PLT
	movq	%rax, %r14
	callq	bli_auxinfo_next_b@PLT
	vmovss	68(%rsp), %xmm1                 # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	%xmm0, %xmm1
	jne	.LBB0_2
	jp	.LBB0_2
# %bb.1:                                # %if.end
	movq	16(%rbp), %rsi
	xorl	%edi, %edi
	movq	%rax, %r13
	callq	bli_auxinfo_set_next_ab@PLT
	vxorps	%xmm0, %xmm0, %xmm0
	leaq	64(%rsp), %r9
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	vmovups	%ymm0, (%rsp)
	vzeroupper
	callq	*%r14
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	bli_auxinfo_set_next_ab@PLT
	movq	16(%rbp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	xorl	%edi, %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	movq	%r15, 24(%rsp)
	movq	%rax, 16(%rsp)
	vmovups	%xmm0, (%rsp)
	callq	*%r14
.LBB0_2:                                # %common.ret
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	bli_cgemmtrsm3m1_l_zen2_ref, .Lfunc_end0-bli_cgemmtrsm3m1_l_zen2_ref
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
