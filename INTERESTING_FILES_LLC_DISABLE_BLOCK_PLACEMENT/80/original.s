	.text
	.file	""
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function ilog2_64
.LCPI0_0:
	.quad	0                               # 0x0
	.text
	.globl	ilog2_64
	.p2align	4, 0x90
	.type	ilog2_64,@function
ilog2_64:                               # @ilog2_64
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	#APP
	bsrq	.LCPI0_0(%rip), %rax
	#NO_APP
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end0:
	.size	ilog2_64, .Lfunc_end0-ilog2_64
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function alignlog2_64
.LCPI1_0:
	.quad	0                               # 0x0
	.text
	.globl	alignlog2_64
	.p2align	4, 0x90
	.type	alignlog2_64,@function
alignlog2_64:                           # @alignlog2_64
	.cfi_startproc
# %bb.0:                                # %entry
	xorl	%eax, %eax
	testb	$1, %dil
	je	.LBB1_2
# %bb.1:                                # %if.end
	xorl	%eax, %eax
	#APP
	bsrq	.LCPI1_0(%rip), %rax
	#NO_APP
.LBB1_2:                                # %return
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end1:
	.size	alignlog2_64, .Lfunc_end1-alignlog2_64
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
