	.text
	.file	""
	.globl	FLA_Lyap_h_opt_var2             # -- Begin function FLA_Lyap_h_opt_var2
	.p2align	4, 0x90
	.type	FLA_Lyap_h_opt_var2,@function
FLA_Lyap_h_opt_var2:                    # @FLA_Lyap_h_opt_var2
# %bb.0:                                # %entry
	cmpl	$100, %edi
	je	.LBB0_3
# %bb.1:                                # %entry
	xorl	%eax, %eax
	cmpl	$1, %edi
	jne	.LBB0_4
# %bb.2:                                # %common.ret
	retq
.LBB0_3:                                # %sw.bb
	movl	0, %eax
.LBB0_4:                                # %sw.epilog
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	FLA_Lyap_h_opt_var2, .Lfunc_end0-FLA_Lyap_h_opt_var2
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
