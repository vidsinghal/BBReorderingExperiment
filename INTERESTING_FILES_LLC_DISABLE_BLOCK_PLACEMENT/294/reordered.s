	.text
	.file	""
	.globl	bli_chemv_unf_var1a             # -- Begin function bli_chemv_unf_var1a
	.p2align	4, 0x90
	.type	bli_chemv_unf_var1a,@function
bli_chemv_unf_var1a:                    # @bli_chemv_unf_var1a
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	0, %r15
	testb	$1, %dl
	je	.LBB0_3
# %bb.1:                                # %for.body.us.preheader
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movss	(%rdi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 60(%rsp)                 # 4-byte Spill
	callq	bli_is_conj@PLT
	movss	(%rbx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	60(%rsp), %xmm2                 # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	mulss	(%r14), %xmm2
	xorps	%xmm1, %xmm1
	addss	%xmm1, %xmm2
	movss	%xmm2, (%rbx)
	movss	%xmm0, (%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 40(%rsp)
	movups	%xmm0, 24(%rsp)
	movups	%xmm0, 8(%rsp)
	movq	$1, (%rsp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	*%r15
	movl	$0, (%r14)
	callq	bli_is_conj@PLT
	movl	$0, (%r14)
.LBB0_2:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	callq	bli_is_conj@PLT
	movss	(%rbx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	(%r14), %xmm1                   # xmm1 = mem[0],zero,zero,zero
	xorps	%xmm2, %xmm2
	mulss	%xmm2, %xmm1
	addss	%xmm2, %xmm1
	movss	%xmm1, (%rbx)
	movss	%xmm0, (%r14)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 40(%rsp)
	movups	%xmm0, 24(%rsp)
	movups	%xmm0, 8(%rsp)
	movq	$1, (%rsp)
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	callq	*%r15
	movl	$0, (%r14)
	callq	bli_is_conj@PLT
	movl	$0, (%r14)
	jmp	.LBB0_2
.LBB0_3:                                # %for.end
	addq	$64, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	bli_chemv_unf_var1a, .Lfunc_end0-bli_chemv_unf_var1a
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
