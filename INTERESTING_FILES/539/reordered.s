	.text
	.file	""
	.globl	cs_di_ltsolve                   # -- Begin function cs_di_ltsolve
	.p2align	4, 0x90
	.type	cs_di_ltsolve,@function
cs_di_ltsolve:                          # @cs_di_ltsolve
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	setne	%al
	testb	%sil, %al
	je	.LBB0_3
# %bb.1:                                # %for.cond6.preheader
	movabsq	$4607182418800017408, %rax      # imm = 0x3FF0000000000000
	movq	%rax, (%rdi)
	.p2align	4, 0x90
.LBB0_2:                                # %for.cond6
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %if.then
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	cs_di_ltsolve, .Lfunc_end0-cs_di_ltsolve
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
