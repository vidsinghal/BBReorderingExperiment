	.text
	.file	""
	.globl	RSA_padding_add_X931            # -- Begin function RSA_padding_add_X931
	.p2align	4, 0x90
	.type	RSA_padding_add_X931,@function
RSA_padding_add_X931:                   # @RSA_padding_add_X931
# %bb.0:                                # %entry
	cmpl	$1, %esi
	jle	.LBB0_4
# %bb.1:                                # %if.end
	cmpl	$2, %esi
	jne	.LBB0_3
# %bb.2:                                # %if.then3
	movb	$0, (%rdi)
.LBB0_3:                                # %common.ret
	xorl	%eax, %eax
	retq
.LBB0_4:                                # %if.then
	movl	$0, 0
.Lfunc_end0:
	.size	RSA_padding_add_X931, .Lfunc_end0-RSA_padding_add_X931
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
