	.text
	.file	""
	.globl	lj_obj_equal                    # -- Begin function lj_obj_equal
	.p2align	4, 0x90
	.type	lj_obj_equal,@function
lj_obj_equal:                           # @lj_obj_equal
# %bb.0:                                # %entry
	movabsq	$8589934590, %rax               # imm = 0x1FFFFFFFE
	andq	%rdi, %rax
	cmpq	$2, %rax
	setne	%al
	testb	%sil, %al
	je	.LBB0_2
# %bb.1:                                # %if.end28
	movsd	0, %xmm0                        # xmm0 = mem[0],zero
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	lj_obj_equal, .Lfunc_end0-lj_obj_equal
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
