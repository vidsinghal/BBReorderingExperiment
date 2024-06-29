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
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movl	%esi, %r14d
	movl	%edi, %ebx
	xorl	%r15d, %r15d
	xorl	%edi, %edi
	callq	EVP_CIPHER_CTX_get_key_length@PLT
	testb	$1, %r14b
	je	.LBB0_2
# %bb.1:                                # %if.then13
	movl	$0, 0
	jmp	.LBB0_5
.LBB0_2:                                # %if.end14
	testb	$1, %bpl
	jne	.LBB0_4
# %bb.3:                                # %land.lhs.true
	movq	0, %rax
.LBB0_4:                                # %err
	movl	%ebx, %r15d
.LBB0_5:                                # %err
	movl	%r15d, %eax
	movq	%rax, 0
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	PKCS5_v2_PBKDF2_keyivgen_ex, .Lfunc_end0-PKCS5_v2_PBKDF2_keyivgen_ex
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
