	.text
	.file	""
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function vtklibproj_pj_qsfn
.LCPI0_0:
	.quad	0x3ff0000000000000              # double 1
	.text
	.globl	vtklibproj_pj_qsfn
	.p2align	4, 0x90
	.type	vtklibproj_pj_qsfn,@function
vtklibproj_pj_qsfn:                     # @vtklibproj_pj_qsfn
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_1
# %bb.2:                                # %if.then
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm0, %xmm1
	jae	.LBB0_3
# %bb.4:                                # %cleanup
	movapd	%xmm1, %xmm0
	retq
.LBB0_1:
	movsd	.LCPI0_0(%rip), %xmm0           # xmm0 = [1.0E+0,0.0E+0]
	retq
.LBB0_3:                                # %cdce.call
	pushq	%rax
	callq	log@PLT
	xorpd	%xmm1, %xmm1
	addq	$8, %rsp
	movapd	%xmm1, %xmm0
	retq
.Lfunc_end0:
	.size	vtklibproj_pj_qsfn, .Lfunc_end0-vtklibproj_pj_qsfn
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
