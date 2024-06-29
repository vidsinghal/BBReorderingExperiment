	.text
	.file	""
	.globl	dns_ecdb_register               # -- Begin function dns_ecdb_register
	.p2align	4, 0x90
	.type	dns_ecdb_register,@function
dns_ecdb_register:                      # @dns_ecdb_register
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testb	$1, %sil
	jne	.LBB0_4
# %bb.1:                                # %lor.end
	testb	$1, %dl
	jne	.LBB0_4
# %bb.2:                                # %land.rhs
	cmpq	$0, 0
	jne	.LBB0_4
# %bb.3:                                # %lor.end14
	movq	%rdi, %rcx
	xorl	%eax, %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	callq	*%rax
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %lor.rhs
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	*%rax
.Lfunc_end0:
	.size	dns_ecdb_register, .Lfunc_end0-dns_ecdb_register
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
