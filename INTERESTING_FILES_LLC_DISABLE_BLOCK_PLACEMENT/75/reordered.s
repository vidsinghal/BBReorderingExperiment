	.text
	.file	""
	.globl	opengraphfile                   # -- Begin function opengraphfile
	.p2align	4, 0x90
	.type	opengraphfile,@function
opengraphfile:                          # @opengraphfile
# %bb.0:                                # %entry
	movl	0, %eax
	testb	$1, %dil
	jne	.LBB0_6
# %bb.1:                                # %lor.lhs.false74
	movl	0, %eax
	testb	$1, %sil
	jne	.LBB0_6
# %bb.2:                                # %lor.lhs.false81
	movl	0, %eax
	testb	$1, %dl
	jne	.LBB0_6
# %bb.3:                                # %lor.lhs.false88
	movl	0, %eax
	testb	$1, %cl
	jne	.LBB0_6
# %bb.4:                                # %lor.lhs.false95
	movl	0, %eax
	testb	$1, %r8b
	jne	.LBB0_6
# %bb.5:                                # %lor.lhs.false102
	movl	0, %eax
.LBB0_6:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	opengraphfile, .Lfunc_end0-opengraphfile
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
