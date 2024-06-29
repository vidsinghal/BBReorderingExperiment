	.text
	.file	""
	.globl	FLA_Apply_G_rf_blk_var6         # -- Begin function FLA_Apply_G_rf_blk_var6
	.p2align	4, 0x90
	.type	FLA_Apply_G_rf_blk_var6,@function
FLA_Apply_G_rf_blk_var6:                # @FLA_Apply_G_rf_blk_var6
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
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r9d, %ebx
	movl	%r8d, %ebp
	movl	%ecx, %r14d
	movl	%edx, %r13d
	movl	%esi, %r15d
	movq	%rdi, %r12
	vmovups	0, %ymm0
	vmovups	24, %ymm1
	vmovups	%ymm1, 24(%rsp)
	vmovups	%ymm0, (%rsp)
	vzeroupper
	callq	FLA_Obj_width@PLT
	vmovups	0, %ymm0
	vmovups	24, %ymm1
	vmovups	%ymm1, 24(%rsp)
	vmovups	%ymm0, (%rsp)
	vzeroupper
	callq	FLA_Obj_width@PLT
	vmovups	0, %ymm0
	vmovups	24, %ymm1
	vmovups	%ymm1, 24(%rsp)
	vmovups	%ymm0, (%rsp)
	vzeroupper
	callq	FLA_Obj_row_stride@PLT
	xorl	%edi, %edi
	callq	FLA_Obj_row_stride@PLT
	testb	$1, %r13b
	jne	.LBB0_3
# %bb.1:
	movl	112(%rsp), %r13d
.LBB0_2:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%r13d, (%rsp)
	movl	%r14d, %edi
	movl	120(%rsp), %esi
	movl	%ebp, %edx
	movq	%r12, %rcx
	movl	%r15d, %r8d
	movl	%ebx, %r9d
	callq	FLA_Apply_G_rf_ass_var6@PLT
	jmp	.LBB0_2
.LBB0_3:                                # %common.ret
	xorl	%eax, %eax
	addq	$56, %rsp
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
	.size	FLA_Apply_G_rf_blk_var6, .Lfunc_end0-FLA_Apply_G_rf_blk_var6
	.cfi_endproc
                                        # -- End function
	.globl	FLA_Apply_G_rf_bls_var6         # -- Begin function FLA_Apply_G_rf_bls_var6
	.p2align	4, 0x90
	.type	FLA_Apply_G_rf_bls_var6,@function
FLA_Apply_G_rf_bls_var6:                # @FLA_Apply_G_rf_bls_var6
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
	movl	%r8d, %ebp
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movl	%esi, %r12d
	movl	%edi, %r13d
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, (%rsp)
	movl	%r13d, %edi
	movl	64(%rsp), %esi
	movl	%r12d, %edx
	movq	%r15, %rcx
	movl	%r14d, %r8d
	movl	%ebp, %r9d
	callq	FLA_Apply_G_rf_ass_var6@PLT
	jmp	.LBB1_1
.Lfunc_end1:
	.size	FLA_Apply_G_rf_bls_var6, .Lfunc_end1-FLA_Apply_G_rf_bls_var6
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
