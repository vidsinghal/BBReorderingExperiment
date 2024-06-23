	.text
	.file	""
	.globl	f77_constant                    # -- Begin function f77_constant
	.p2align	4, 0x90
	.type	f77_constant,@function
f77_constant:                           # @f77_constant
# %bb.0:                                # %entry
	cmpb	$0, (%rsi)
	je	.LBB0_1
	.p2align	4, 0x90
.LBB0_4:                                # %while.cond.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_4
.LBB0_1:                                # %while.cond.outer.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_2:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	jne	.LBB0_2
# %bb.3:                                # %if.then36
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$0, (%rdi)
	movzbl	(%rsi), %eax
	jmp	.LBB0_2
.Lfunc_end0:
	.size	f77_constant, .Lfunc_end0-f77_constant
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
