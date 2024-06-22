	.text
	.file	""
	.globl	cspcon_                         # -- Begin function cspcon_
	.p2align	4, 0x90
	.type	cspcon_,@function
cspcon_:                                # @cspcon_
# %bb.0:                                # %entry
	xorps	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	setbe	%al
	testb	%sil, %al
	je	.LBB0_2
# %bb.1:                                # %if.end14
	movl	$0, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	cspcon_, .Lfunc_end0-cspcon_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
