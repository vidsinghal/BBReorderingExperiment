	.text
	.file	""
	.globl	xnn_f32_f16_vcvt_ukernel__sse2_x8 # -- Begin function xnn_f32_f16_vcvt_ukernel__sse2_x8
	.p2align	4, 0x90
	.type	xnn_f32_f16_vcvt_ukernel__sse2_x8,@function
xnn_f32_f16_vcvt_ukernel__sse2_x8:      # @xnn_f32_f16_vcvt_ukernel__sse2_x8
# %bb.0:                                # %entry
	cmpq	$31, %rdi
	jbe	.LBB0_7
# %bb.1:                                # %for.body.preheader
	leaq	-32(%rdi), %rax
	movl	%eax, %ecx
	shrl	$5, %ecx
	incl	%ecx
	andl	$7, %ecx
	je	.LBB0_5
# %bb.2:                                # %for.body.prol.preheader
	shll	$5, %ecx
	xorl	%edx, %edx
.LBB0_3:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	addq	$32, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB0_3
# %bb.4:                                # %for.body.prol.loopexit.loopexit
	subq	%rdx, %rdi
.LBB0_5:                                # %for.body.prol.loopexit
	cmpq	$224, %rax
	jb	.LBB0_7
.LBB0_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	addq	$-256, %rdi
	cmpq	$31, %rdi
	ja	.LBB0_6
.LBB0_7:                                # %for.end
	retq
.Lfunc_end0:
	.size	xnn_f32_f16_vcvt_ukernel__sse2_x8, .Lfunc_end0-xnn_f32_f16_vcvt_ukernel__sse2_x8
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
