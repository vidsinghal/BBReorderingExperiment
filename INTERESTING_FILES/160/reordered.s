	.text
	.file	""
	.globl	init                            # -- Begin function init
	.p2align	4, 0x90
	.type	init,@function
init:                                   # @init
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dl
	je	.LBB0_4
# %bb.1:                                # %entry
	testb	$1, %sil
	je	.LBB0_4
# %bb.2:                                # %entry
	testb	$1, %dil
	je	.LBB0_4
# %bb.3:                                # %common.ret
	xorl	%eax, %eax
	retq
.LBB0_4:                                # %if.end12
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	QUO_create@PLT
.Lfunc_end0:
	.size	init, .Lfunc_end0-init
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
