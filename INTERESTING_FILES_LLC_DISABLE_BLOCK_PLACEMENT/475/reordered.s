	.text
	.file	""
	.globl	bli_gemm_md                     # -- Begin function bli_gemm_md
	.p2align	4, 0x90
	.type	bli_gemm_md,@function
bli_gemm_md:                            # @bli_gemm_md
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
	movl	%r9d, %ebp
	movq	%r8, %rbx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r12
	xorl	%edi, %edi
	callq	bli_obj_is_real@PLT
	movzbl	(%r13), %eax
	xorl	%edi, %edi
	callq	bli_obj_is_real@PLT
	xorb	$1, %al
	testb	%bpl, %al
	je	.LBB0_2
# %bb.1:                                # %common.ret
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
.LBB0_2:                                # %land.lhs.true12
	.cfi_def_cfa_offset 64
	movq	%r12, %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	movq	%r14, %rcx
	movq	%rbx, %r8
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
	jmp	bli_gemm_md_rrr@PLT             # TAILCALL
.Lfunc_end0:
	.size	bli_gemm_md, .Lfunc_end0-bli_gemm_md
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
