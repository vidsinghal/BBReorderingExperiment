	.text
	.file	""
	.globl	xnn_qu8_gavgpool_minmax_fp32_ukernel_7p7x__scalar_imagic_c4 # -- Begin function xnn_qu8_gavgpool_minmax_fp32_ukernel_7p7x__scalar_imagic_c4
	.p2align	4, 0x90
	.type	xnn_qu8_gavgpool_minmax_fp32_ukernel_7p7x__scalar_imagic_c4,@function
xnn_qu8_gavgpool_minmax_fp32_ukernel_7p7x__scalar_imagic_c4: # @xnn_qu8_gavgpool_minmax_fp32_ukernel_7p7x__scalar_imagic_c4
# %bb.0:                                # %entry
	testb	$1, %sil
	je	.LBB0_3
# %bb.1:                                # %for.body.us.preheader
	xorl	%eax, %eax
.LBB0_2:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	movzbl	(%rdi,%rax), %ecx
	movl	%ecx, (,%rax,4)
	addq	$4, %rax
	jmp	.LBB0_2
.LBB0_3:                                # %for.cond.cleanup
	retq
.Lfunc_end0:
	.size	xnn_qu8_gavgpool_minmax_fp32_ukernel_7p7x__scalar_imagic_c4, .Lfunc_end0-xnn_qu8_gavgpool_minmax_fp32_ukernel_7p7x__scalar_imagic_c4
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
