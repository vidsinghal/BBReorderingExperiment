	.text
	.file	""
	.globl	klu_z_scale                     # -- Begin function klu_z_scale
	.p2align	4, 0x90
	.type	klu_z_scale,@function
klu_z_scale:                            # @klu_z_scale
# %bb.0:                                # %entry
	testl	%edi, %edi
	setg	%al
	andb	%cl, %dl
	andb	%al, %dl
	cmpb	$1, %dl
	je	.LBB0_2
# %bb.1:                                # %if.then13
	movl	$0, (%rsi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	klu_z_scale, .Lfunc_end0-klu_z_scale
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
