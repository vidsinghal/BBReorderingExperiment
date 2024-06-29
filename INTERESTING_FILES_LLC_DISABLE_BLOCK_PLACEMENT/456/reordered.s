	.text
	.file	""
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	cmpb	$1, (%rsi)
	je	.LBB0_4
# %bb.1:                                # %entry.tail.split
	cmpb	$1, (%rdi)
	jne	.LBB0_3
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %if.else33
	xorl	%eax, %eax
	retq
.LBB0_4:                                # %for.cond.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_4
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.str.1,@object                  # @.str.1
	.section	.rodata,"a",@progbits
	.globl	.str.1
.str.1:
	.asciz	"/?"
	.size	.str.1, 3

	.section	".note.GNU-stack","",@progbits
