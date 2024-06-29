	.text
	.file	""
	.globl	generate_fragment               # -- Begin function generate_fragment
	.p2align	4, 0x90
	.type	generate_fragment,@function
generate_fragment:                      # @generate_fragment
# %bb.0:                                # %entry
	testb	$1, %dl
	jne	.LBB0_5
# %bb.1:                                # %if.then3
	testb	$1, %cl
	je	.LBB0_3
# %bb.2:                                # %if.then48
	movq	$0, (%rdi)
	xorl	%esi, %esi
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	negq	%rsi
.LBB0_4:                                # %common.ret.sink.split
	movq	%rsi, 40(%rdi)
.LBB0_5:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	generate_fragment, .Lfunc_end0-generate_fragment
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
