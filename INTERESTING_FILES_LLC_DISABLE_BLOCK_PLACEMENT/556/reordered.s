	.text
	.file	""
	.globl	PKCS5_v2_PBKDF2_keyivgen_ex     # -- Begin function PKCS5_v2_PBKDF2_keyivgen_ex
	.p2align	4, 0x90
	.type	PKCS5_v2_PBKDF2_keyivgen_ex,@function
PKCS5_v2_PBKDF2_keyivgen_ex:            # @PKCS5_v2_PBKDF2_keyivgen_ex
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %r14d
	movl	%edi, %ebx
	xorl	%edi, %edi
	callq	EVP_CIPHER_CTX_get_key_length@PLT
	testb	$1, %r14b
	jne	.LBB0_4
# %bb.1:                                # %if.end14
	testb	$1, %bpl
	jne	.LBB0_3
# %bb.2:                                # %land.lhs.true
	movq	0, %rax
.LBB0_3:                                # %err
	movl	%ebx, %eax
	movq	%rax, 0
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %if.then13
	.cfi_def_cfa_offset 32
	movl	$0, 0
	xorl	%ebx, %ebx
	jmp	.LBB0_3
.Lfunc_end0:
	.size	PKCS5_v2_PBKDF2_keyivgen_ex, .Lfunc_end0-PKCS5_v2_PBKDF2_keyivgen_ex
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
