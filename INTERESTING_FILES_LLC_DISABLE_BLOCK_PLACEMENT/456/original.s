	.text
	.file	""
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %entry
	cmpb	$47, (%rdx)
	cmpb	$1, (%rsi)
	jne	.LBB0_2
.LBB0_1:                                # %for.cond.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_1
.LBB0_2:                                # %entry.tail.split
	cmpb	$1, (%rdi)
	jne	.LBB0_4
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_3
.LBB0_4:                                # %if.else33
	xorl	%eax, %eax
	retq
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
