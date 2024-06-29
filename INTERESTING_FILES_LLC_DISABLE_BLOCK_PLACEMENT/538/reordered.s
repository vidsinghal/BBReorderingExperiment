	.text
	.file	""
	.globl	FLA_LU_piv_opd_var4             # -- Begin function FLA_LU_piv_opd_var4
	.p2align	4, 0x90
	.type	FLA_LU_piv_opd_var4,@function
FLA_LU_piv_opd_var4:                    # @FLA_LU_piv_opd_var4
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%edi, %edi
	jle	.LBB0_4
# %bb.1:                                # %for.body.preheader
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
	movq	%rdx, %r14
	movl	%esi, %ebx
	movl	%edi, %r15d
	movq	64(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	xorl	%r12d, %r12d
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	1(%r12), %r13d
	movl	%ebx, %ebp
	orl	$1, %ebp
	xorl	%edi, %edi
	callq	bl1_ddots@PLT
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%r12d, (%rax)
	movl	$0, 0
	movl	%ebp, (%r14)
	decl	%ebx
	movl	%r13d, %r12d
	cmpl	%r13d, %r15d
	jne	.LBB0_2
# %bb.3:
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
	.cfi_restore %rbx
	.cfi_restore %r12
	.cfi_restore %r13
	.cfi_restore %r14
	.cfi_restore %r15
	.cfi_restore %rbp
.LBB0_4:                                # %for.end
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	FLA_LU_piv_opd_var4, .Lfunc_end0-FLA_LU_piv_opd_var4
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
