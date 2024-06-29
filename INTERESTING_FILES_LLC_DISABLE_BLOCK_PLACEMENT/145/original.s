	.text
	.file	""
	.globl	repair_cmp                      # -- Begin function repair_cmp
	.p2align	4, 0x90
	.type	repair_cmp,@function
repair_cmp:                             # @repair_cmp
# %bb.0:                                # %entry
	xorl	%eax, %eax
	testb	$1, %dl
	jne	.LBB0_3
# %bb.1:                                # %if.else6
	movl	(%rdi), %ecx
	movl	(%rsi), %edx
	cmpl	%edx, %ecx
	jl	.LBB0_3
# %bb.2:                                # %if.else10
	setg	%al
	movzbl	%al, %eax
.LBB0_3:                                # %cleanup
	retq
.Lfunc_end0:
	.size	repair_cmp, .Lfunc_end0-repair_cmp
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
