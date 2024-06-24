	.text
	.file	""
	.globl	BIO_ADDR_rawmake                # -- Begin function BIO_ADDR_rawmake
	.p2align	4, 0x90
	.type	BIO_ADDR_rawmake,@function
BIO_ADDR_rawmake:                       # @BIO_ADDR_rawmake
# %bb.0:                                # %entry
	notb	%dl
	cmpl	$1, %esi
	sete	%al
	orb	%dl, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.end10
	movw	$0, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	BIO_ADDR_rawmake, .Lfunc_end0-BIO_ADDR_rawmake
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
