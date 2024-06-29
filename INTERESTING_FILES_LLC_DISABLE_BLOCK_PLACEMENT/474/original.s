	.text
	.file	""
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function hypre_AMESetup
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	hypre_AMESetup
	.p2align	4, 0x90
	.type	hypre_AMESetup,@function
hypre_AMESetup:                         # @hypre_AMESetup
# %bb.0:                                # %entry
	movl	%edi, %eax
	negl	%eax
	movl	%edi, %ecx
	andl	$7, %eax
	je	.LBB0_4
# %bb.1:                                # %for.body27.prol.preheader
	negl	%eax
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
.LBB0_2:                                # %for.body27.prol
                                        # =>This Inner Loop Header: Depth=1
	addsd	%xmm1, %xmm0
	decl	%edx
	cmpl	%edx, %eax
	jne	.LBB0_2
# %bb.3:                                # %for.body27.prol.loopexit.loopexit
	movl	%edi, %ecx
	subl	%edx, %ecx
.LBB0_4:                                # %for.body27.prol.loopexit
	cmpl	$-8, %edi
	ja	.LBB0_6
.LBB0_5:                                # %for.body27
                                        # =>This Inner Loop Header: Depth=1
	addl	$8, %ecx
	jne	.LBB0_5
.LBB0_6:                                # %for.end39.loopexit
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	hypre_AMESetup, .Lfunc_end0-hypre_AMESetup
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
