	.text
	.file	""
	.globl	xmlDetectCharEncoding__internal_alias # -- Begin function xmlDetectCharEncoding__internal_alias
	.p2align	4, 0x90
	.type	xmlDetectCharEncoding__internal_alias,@function
xmlDetectCharEncoding__internal_alias:  # @xmlDetectCharEncoding__internal_alias
# %bb.0:                                # %entry
	notb	%sil
	testq	%rdi, %rdi
	sete	%cl
	xorl	%eax, %eax
	orb	%sil, %cl
	testb	$1, %cl
	jne	.LBB0_2
# %bb.1:                                # %if.then2
	xorl	%eax, %eax
	cmpb	$0, (%rdi)
	sete	%al
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	xmlDetectCharEncoding__internal_alias, .Lfunc_end0-xmlDetectCharEncoding__internal_alias
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
