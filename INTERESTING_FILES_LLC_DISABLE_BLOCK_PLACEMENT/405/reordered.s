	.text
	.file	""
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function unur_test_quartiles
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	unur_test_quartiles
	.p2align	4, 0x90
	.type	unur_test_quartiles,@function
unur_test_quartiles:                    # @unur_test_quartiles
# %bb.0:                                # %entry
	movsd	.LCPI0_0(%rip), %xmm1           # xmm1 = [1.0E+0,0.0E+0]
	xorl	%eax, %eax
	xorpd	%xmm0, %xmm0
	jmp	.LBB0_2
.LBB0_1:                                # %if.then58
                                        #   in Loop: Header=BB0_2 Depth=1
	cltq
	movq	$0, -40(%rsp,%rax,8)
	movsd	-40(%rsp), %xmm1                # xmm1 = mem[0],zero
	xorl	%eax, %eax
.LBB0_2:                                # %for.cond48
                                        # =>This Inner Loop Header: Depth=1
	ucomisd	%xmm0, %xmm1
	ja	.LBB0_1
# %bb.3:                                # %for.cond48.for.inc_crit_edge
                                        #   in Loop: Header=BB0_2 Depth=1
	incl	%eax
	jmp	.LBB0_2
.Lfunc_end0:
	.size	unur_test_quartiles, .Lfunc_end0-unur_test_quartiles
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
