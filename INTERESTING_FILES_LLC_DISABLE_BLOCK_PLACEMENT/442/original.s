	.text
	.file	""
	.globl	nco_openmp_ini                  # -- Begin function nco_openmp_ini
	.p2align	4, 0x90
	.type	nco_openmp_ini,@function
nco_openmp_ini:                         # @nco_openmp_ini
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movl	%edi, %ebp
	movq	0, %rax
	movl	0, %eax
	movl	$0, 0
	movzwl	0, %eax
	movzwl	0, %eax
	movq	0, %rax
	xorl	%eax, %eax
	callq	fprintf@PLT
	movl	0, %eax
	movl	0, %eax
	testl	%ebp, %ebp
	setne	%al
	testl	%ebx, %ebx
	setg	%cl
	testb	%cl, %al
	je	.LBB0_2
# %bb.1:                                # %if.then148
	movzwl	0, %eax
	jmp	.LBB0_3
.LBB0_2:                                # %if.end159
	movl	0, %eax
.LBB0_3:                                # %common.ret
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	nco_openmp_ini, .Lfunc_end0-nco_openmp_ini
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
