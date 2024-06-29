	.text
	.file	""
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function xnn_f32_vsigmoid_ukernel__scalar_rr2_p5_div_x2
.LCPI0_0:
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.text
	.globl	xnn_f32_vsigmoid_ukernel__scalar_rr2_p5_div_x2
	.p2align	4, 0x90
	.type	xnn_f32_vsigmoid_ukernel__scalar_rr2_p5_div_x2,@function
xnn_f32_vsigmoid_ukernel__scalar_rr2_p5_div_x2: # @xnn_f32_vsigmoid_ukernel__scalar_rr2_p5_div_x2
# %bb.0:                                # %entry
	cmpq	$7, %rdi
	ja	.LBB0_4
# %bb.1:                                # %for.end
	retq
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	andps	%xmm1, %xmm0
	addq	$-64, %rdi
	cmpq	$7, %rdi
	ja	.LBB0_2
.LBB0_3:                                # %for.cond.for.end_crit_edge
	movss	%xmm0, (%rsi)
	retq
.LBB0_4:                                # %for.body.lr.ph
	movss	(%rsi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	leaq	-8(%rdi), %rax
	movl	%eax, %ecx
	shrl	$3, %ecx
	incl	%ecx
	andl	$7, %ecx
	je	.LBB0_8
# %bb.5:                                # %for.body.prol.preheader
	shll	$3, %ecx
	xorl	%edx, %edx
	movaps	.LCPI0_0(%rip), %xmm1           # xmm1 = [NaN,NaN,NaN,NaN]
.LBB0_6:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	andps	%xmm1, %xmm0
	addq	$8, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_6
# %bb.7:                                # %for.body.prol.loopexit.loopexit
	subq	%rdx, %rdi
.LBB0_8:                                # %for.body.prol.loopexit
	cmpq	$56, %rax
	jb	.LBB0_3
# %bb.9:
	movaps	.LCPI0_0(%rip), %xmm1           # xmm1 = [NaN,NaN,NaN,NaN]
	jmp	.LBB0_2
.Lfunc_end0:
	.size	xnn_f32_vsigmoid_ukernel__scalar_rr2_p5_div_x2, .Lfunc_end0-xnn_f32_vsigmoid_ukernel__scalar_rr2_p5_div_x2
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
