	.text
	.file	""
	.globl	gdcmjpeg12_jinit_d_coef_controller # -- Begin function gdcmjpeg12_jinit_d_coef_controller
	.p2align	4, 0x90
	.type	gdcmjpeg12_jinit_d_coef_controller,@function
gdcmjpeg12_jinit_d_coef_controller:     # @gdcmjpeg12_jinit_d_coef_controller
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
	testb	$1, %r8b
	je	.LBB0_3
# %bb.1:                                # %for.body.us.preheader
	movl	%r9d, %ebx
	movl	%ecx, %ebp
	movq	%rdx, %r14
	movl	%esi, %r12d
	movq	%rdi, %r15
	movq	(%rdi), %r13
	callq	gdcmjpeg12_jround_up@PLT
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%ebx, %ecx
	xorl	%r8d, %r8d
	movl	%ebp, %r9d
	callq	*%r13
	movq	64(%rsp), %rax
	movq	%r14, (%rax)
	movl	%r12d, %r12d
.LBB0_2:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r13
	callq	gdcmjpeg12_jround_up@PLT
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	%ebx, %ecx
	xorl	%r8d, %r8d
	movl	%ebp, %r9d
	callq	*%r13
	movq	64(%rsp), %rax
	movq	%r14, (%rax,%r12,8)
	jmp	.LBB0_2
.LBB0_3:                                # %for.end
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
	.size	gdcmjpeg12_jinit_d_coef_controller, .Lfunc_end0-gdcmjpeg12_jinit_d_coef_controller
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
