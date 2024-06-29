	.text
	.file	""
	.globl	dns_sdlz_putrr                  # -- Begin function dns_sdlz_putrr
	.p2align	4, 0x90
	.type	dns_sdlz_putrr,@function
dns_sdlz_putrr:                         # @dns_sdlz_putrr
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	testb	$1, %cl
	jne	.LBB0_4
# %bb.1:                                # %land.rhs
	cmpl	$0, 0
	jne	.LBB0_4
# %bb.2:                                # %lor.end
	testb	$1, %dl
	jne	.LBB0_4
# %bb.3:                                # %lor.end28
	movl	%esi, %ebx
	movq	%rdi, %r14
	xorl	%eax, %eax
	callq	*%rax
	movq	%r14, 0
	movl	%ebx, 0
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %lor.rhs
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*%rax
.Lfunc_end0:
	.size	dns_sdlz_putrr, .Lfunc_end0-dns_sdlz_putrr
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
