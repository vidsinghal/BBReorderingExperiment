	.text
	.file	""
	.globl	dlar1v_                         # -- Begin function dlar1v_
	.p2align	4, 0x90
	.type	dlar1v_,@function
dlar1v_:                                # @dlar1v_
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
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	88(%rsp), %ebp
	movl	72(%rsp), %r13d
	movq	64(%rsp), %r12
	callq	dlamch_@PLT
	vmovsd	(%r15), %xmm0                   # xmm0 = mem[0],zero
	vmovsd	%xmm0, (%r12)
	cmpl	%r13d, 96(%rsp)
	jge	.LBB0_3
# %bb.1:                                # %for.body
	movq	80(%rsp), %rax
	orl	%r13d, %ebp
	movslq	%ebp, %rcx
	vmovsd	(%r12,%rcx,8), %xmm0            # xmm0 = mem[0],zero
	vsubsd	(%r14), %xmm0, %xmm0
	vaddsd	(%rbx), %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
.LBB0_2:                                # %common.ret
	vmovsd	%xmm0, (%r12,%rax,8)
	xorl	%eax, %eax
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
.LBB0_3:                                # %for.end
	.cfi_def_cfa_offset 64
	callq	disnan_@PLT
	movabsq	$4607182418800017408, %rax      # imm = 0x3FF0000000000000
	movq	%rax, (%r12)
	movslq	%ebp, %rax
	vxorpd	%xmm0, %xmm0, %xmm0
	jmp	.LBB0_2
.Lfunc_end0:
	.size	dlar1v_, .Lfunc_end0-dlar1v_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
