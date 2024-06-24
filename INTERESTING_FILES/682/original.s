	.text
	.file	""
	.globl	BN_X931_generate_Xpq            # -- Begin function BN_X931_generate_Xpq
	.p2align	4, 0x90
	.type	BN_X931_generate_Xpq,@function
BN_X931_generate_Xpq:                   # @BN_X931_generate_Xpq
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.end
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	BN_priv_rand_ex@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	BN_X931_generate_Xpq, .Lfunc_end0-BN_X931_generate_Xpq
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
