	.text
	.file	""
	.globl	gt_ma_init                      # -- Begin function gt_ma_init
	.p2align	4, 0x90
	.type	gt_ma_init,@function
gt_ma_init:                             # @gt_ma_init
# %bb.0:                                # %entry
	cmpb	$0, ma.init(%rip)
	jne	.LBB0_2
# %bb.1:                                # %do.end
	movb	$1, ma.init(%rip)
	retq
.LBB0_2:                                # %if.then
	pushq	%rax
	xorl	%edi, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movl	$1, %r9d
	xorl	%eax, %eax
	callq	fprintf@PLT
.Lfunc_end0:
	.size	gt_ma_init, .Lfunc_end0-gt_ma_init
                                        # -- End function
	.type	ma.init,@object                 # @ma.init
	.local	ma.init
	.comm	ma.init,1,1
	.section	".note.GNU-stack","",@progbits
