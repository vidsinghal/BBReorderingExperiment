	.text
	.file	""
	.globl	ilu_zpivotL                     # -- Begin function ilu_zpivotL
	.p2align	4, 0x90
	.type	ilu_zpivotL,@function
ilu_zpivotL:                            # @ilu_zpivotL
# %bb.0:                                # %entry
                                        # kill: def $edi killed $edi def $rdi
	movl	8(%rsp), %eax
	testl	%eax, %eax
	setne	%cl
	leal	-1(%rdi), %edx
	cmpl	%eax, %edx
	setl	%dl
	andb	%cl, %dl
	cmpb	$1, %dl
	jne	.LBB0_2
.LBB0_1:                                # %for.cond107
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jg	.LBB0_1
.LBB0_2:                                # %if.end119.split
	movl	%edi, (%rsi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ilu_zpivotL, .Lfunc_end0-ilu_zpivotL
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
