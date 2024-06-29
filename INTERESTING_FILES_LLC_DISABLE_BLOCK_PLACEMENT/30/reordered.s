	.text
	.file	""
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function FLA_Norm1_tridiag_ops
.LCPI0_0:
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.text
	.globl	FLA_Norm1_tridiag_ops
	.p2align	4, 0x90
	.type	FLA_Norm1_tridiag_ops,@function
FLA_Norm1_tridiag_ops:                  # @FLA_Norm1_tridiag_ops
# %bb.0:                                # %entry
	xorps	%xmm0, %xmm0
	testb	$1, %sil
	je	.LBB0_2
# %bb.1:                                # %if.then
	movss	(%rdi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	andps	.LCPI0_0(%rip), %xmm0
.LBB0_2:                                # %if.end
	movss	%xmm0, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	FLA_Norm1_tridiag_ops, .Lfunc_end0-FLA_Norm1_tridiag_ops
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
