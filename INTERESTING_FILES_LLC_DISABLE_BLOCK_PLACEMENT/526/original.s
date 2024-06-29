	.text
	.file	""
	.globl	FLA_Lyap_h_opt_var2             # -- Begin function FLA_Lyap_h_opt_var2
	.p2align	4, 0x90
	.type	FLA_Lyap_h_opt_var2,@function
FLA_Lyap_h_opt_var2:                    # @FLA_Lyap_h_opt_var2
# %bb.0:                                # %entry
	cmpl	$1, %edi
	jne	.LBB0_3
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB0_3:                                # %entry
	cmpl	$100, %edi
	jne	.LBB0_5
# %bb.4:                                # %sw.bb
	movl	0, %eax
.LBB0_5:                                # %sw.epilog
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	FLA_Lyap_h_opt_var2, .Lfunc_end0-FLA_Lyap_h_opt_var2
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
