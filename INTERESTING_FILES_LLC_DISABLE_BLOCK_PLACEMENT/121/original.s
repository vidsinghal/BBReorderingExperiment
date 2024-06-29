	.text
	.file	""
	.globl	FLA_Eig_gest_il_opt_var1        # -- Begin function FLA_Eig_gest_il_opt_var1
	.p2align	4, 0x90
	.type	FLA_Eig_gest_il_opt_var1,@function
FLA_Eig_gest_il_opt_var1:               # @FLA_Eig_gest_il_opt_var1
# %bb.0:                                # %entry
	movl	%edi, %eax
	movl	0, %ecx
	testb	$1, %sil
	retq
.Lfunc_end0:
	.size	FLA_Eig_gest_il_opt_var1, .Lfunc_end0-FLA_Eig_gest_il_opt_var1
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
