	.text
	.file	""
	.globl	RSA_meth_new                    # -- Begin function RSA_meth_new
	.p2align	4, 0x90
	.type	RSA_meth_new,@function
RSA_meth_new:                           # @RSA_meth_new
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
	callq	CRYPTO_zalloc@PLT
	testb	$1, %bpl
	je	.LBB0_3
# %bb.1:                                # %if.end7
	movl	$0, 0
.LBB0_2:                                # %if.end
	movl	$0, 0
	movl	$0, 0
.LBB0_3:                                # %if.then
	testb	$1, %bl
	jne	.LBB0_2
# %bb.4:                                # %if.then6
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	RSA_meth_new, .Lfunc_end0-RSA_meth_new
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
