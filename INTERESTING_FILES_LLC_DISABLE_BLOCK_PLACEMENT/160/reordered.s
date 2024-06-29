	.text
	.file	""
	.globl	qcreate                         # -- Begin function qcreate
	.p2align	4, 0x90
	.type	qcreate,@function
qcreate:                                # @qcreate
# %bb.0:                                # %entry
	notb	%sil
	testq	%rdi, %rdi
	sete	%al
	orb	%sil, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %for.body
	movl	0, %eax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	qcreate, .Lfunc_end0-qcreate
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
