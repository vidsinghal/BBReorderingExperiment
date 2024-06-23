	.text
	.file	""
	.globl	umf_l_is_permutation            # -- Begin function umf_l_is_permutation
	.p2align	4, 0x90
	.type	umf_l_is_permutation,@function
umf_l_is_permutation:                   # @umf_l_is_permutation
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	setle	%al
	testb	%sil, %al
	je	.LBB0_3
# %bb.1:                                # %if.end8.preheader
	testq	%rdi, %rdi
	sete	%al
	testq	%rdx, %rdx
	sets	%cl
	andb	%al, %cl
	cmpb	$1, %cl
	jne	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                # %if.end8
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	umf_l_is_permutation, .Lfunc_end0-umf_l_is_permutation
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
