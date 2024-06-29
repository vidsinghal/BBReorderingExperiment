	.text
	.file	""
	.globl	main_vcfgtcheck                 # -- Begin function main_vcfgtcheck
	.p2align	4, 0x90
	.type	main_vcfgtcheck,@function
main_vcfgtcheck:                        # @main_vcfgtcheck
# %bb.0:                                # %entry
                                        # kill: def $edi killed $edi def $rdi
	cmpl	$83, %edi
	jg	.LBB0_5
# %bb.1:                                # %entry
	testl	%edi, %edi
	je	.LBB0_11
# %bb.2:                                # %entry
	cmpl	$1, %edi
	je	.LBB0_10
# %bb.3:                                # %entry
	cmpl	$3, %edi
	jne	.LBB0_8
.LBB0_4:                                # %while.cond.us
                                        # =>This Inner Loop Header: Depth=1
	movl	0, %eax
	jmp	.LBB0_4
.LBB0_5:                                # %entry
	addl	$-84, %edi
	cmpl	$32, %edi
	ja	.LBB0_8
# %bb.6:                                # %entry
	movabsq	$5637668864, %rax               # imm = 0x150080000
	btq	%rdi, %rax
	jb	.LBB0_4
# %bb.7:                                # %entry
	testq	%rdi, %rdi
	je	.LBB0_9
.LBB0_8:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	0, %eax
	movq	0, %rax
	jmp	.LBB0_8
.LBB0_9:                                # %while.cond.us10
                                        # =>This Inner Loop Header: Depth=1
	movl	0, %eax
	jmp	.LBB0_9
.LBB0_10:                               # %while.cond.us6
                                        # =>This Inner Loop Header: Depth=1
	movl	0, %eax
	movq	0, %rax
	jmp	.LBB0_10
.LBB0_11:                               # %while.cond.us2
                                        # =>This Inner Loop Header: Depth=1
	movl	0, %eax
	jmp	.LBB0_11
.Lfunc_end0:
	.size	main_vcfgtcheck, .Lfunc_end0-main_vcfgtcheck
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
