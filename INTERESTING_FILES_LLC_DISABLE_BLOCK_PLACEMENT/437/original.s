	.text
	.file	""
	.globl	FLA_Bidiag_UT_u_step_ofs_var3   # -- Begin function FLA_Bidiag_UT_u_step_ofs_var3
	.p2align	4, 0x90
	.type	FLA_Bidiag_UT_u_step_ofs_var3,@function
FLA_Bidiag_UT_u_step_ofs_var3:          # @FLA_Bidiag_UT_u_step_ofs_var3
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
	movl	%r8d, %ebx
	movl	%ecx, 4(%rsp)                   # 4-byte Spill
	movq	%rdx, %r15
	movl	%esi, %r12d
	movq	64(%rsp), %rax
	movq	(%rax), %rax
	movq	(%rax), %r14
	movslq	%edi, %rbp
	leaq	(%rbp,%rbp), %r13
	movl	$1, %edi
	callq	FLA_malloc@PLT
	movslq	%r12d, %r12
	addq	%r12, %r12
	movl	$1, %edi
	callq	FLA_malloc@PLT
	movl	$1, %edi
	callq	FLA_malloc@PLT
	movl	$1, %edi
	callq	FLA_malloc@PLT
	movq	%r12, %rdi
	callq	FLA_malloc@PLT
	movl	$1, %edi
	callq	FLA_malloc@PLT
	movq	%r13, %rdi
	callq	FLA_malloc@PLT
	movslq	4(%rsp), %rax                   # 4-byte Folded Reload
	leaq	(%r15,%rax,4), %rsi
	xorl	%edi, %edi
	callq	FLA_Househ2_UT_l_ops@PLT
	callq	bl1_scopyv@PLT
	cmpl	$2, %ebp
	jl	.LBB0_2
# %bb.1:                                # %if.then208
	callq	bl1_scopyv@PLT
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%ebx, %ecx
	callq	bl1_saxpyv@PLT
.LBB0_2:                                # %if.end209
	movslq	%ebx, %rax
	leaq	(%r15,%rax,4), %r15
	addq	$8, %r14
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	FLA_Fused_Ahx_Axpy_Ax_ops_var1@PLT
	xorl	%edi, %edi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movl	%ebx, %ecx
	callq	bl1_saxpyv@PLT
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
.Lfunc_end0:
	.size	FLA_Bidiag_UT_u_step_ofs_var3, .Lfunc_end0-FLA_Bidiag_UT_u_step_ofs_var3
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
