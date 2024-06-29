	.text
	.file	""
	.globl	zheswapr_                       # -- Begin function zheswapr_
	.p2align	4, 0x90
	.type	zheswapr_,@function
zheswapr_:                              # @zheswapr_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	callq	lsame_@PLT
	xorl	%edi, %edi
                                        # implicit-def: $rsi
	testb	$1, %bl
	je	.LBB0_2
# %bb.1:                                # %if.then
	xorl	%esi, %esi
.LBB0_2:                                # %if.else
	callq	zswap_@PLT
.Lfunc_end0:
	.size	zheswapr_, .Lfunc_end0-zheswapr_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
