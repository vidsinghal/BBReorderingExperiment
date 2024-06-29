	.text
	.file	""
	.globl	hypre_dlasv2                    # -- Begin function hypre_dlasv2
	.p2align	4, 0x90
	.type	hypre_dlasv2,@function
hypre_dlasv2:                           # @hypre_dlasv2
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
	movq	%r9, %r12
	movq	%r8, %r13
	movq	%rcx, %rbx
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rsi, %rbp
	movq	%rdi, %r14
	movq	64(%rsp), %rax
	movq	$0, (%rcx)
	movq	$0, (%rdi)
	movq	$0, (%rax)
	movabsq	$4607182418800017408, %r15      # imm = 0x3FF0000000000000
	movq	%r15, (%rsi)
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	hypre_d_sign@PLT
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	hypre_d_sign@PLT
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	hypre_d_sign@PLT
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	hypre_d_sign@PLT
	xorl	%edi, %edi
	movq	%rbp, %rsi
	callq	hypre_d_sign@PLT
	movq	$0, (%r13)
	testb	$1, 72(%rsp)
	je	.LBB0_2
# %bb.1:                                # %if.then127
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	hypre_d_sign@PLT
	movq	(%rsp), %rdi                    # 8-byte Reload
	xorl	%esi, %esi
	callq	hypre_d_sign@PLT
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	hypre_d_sign@PLT
	movq	%r15, (%r14)
.LBB0_2:                                # %if.end133
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	hypre_d_sign@PLT
	movq	%r15, (%r14)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	hypre_d_sign@PLT
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
	.size	hypre_dlasv2, .Lfunc_end0-hypre_dlasv2
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
