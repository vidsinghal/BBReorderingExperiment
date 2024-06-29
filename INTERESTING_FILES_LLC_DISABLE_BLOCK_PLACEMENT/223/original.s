	.text
	.file	""
	.globl	isl_schedule_plain_is_equal     # -- Begin function isl_schedule_plain_is_equal
	.p2align	4, 0x90
	.type	isl_schedule_plain_is_equal,@function
isl_schedule_plain_is_equal:            # @isl_schedule_plain_is_equal
	.cfi_startproc
# %bb.0:                                # %entry
	notb	%sil
	testq	%rdi, %rdi
	sete	%al
	orb	%sil, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.end3
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	isl_schedule_tree_plain_is_equal@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %return
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	isl_schedule_plain_is_equal, .Lfunc_end0-isl_schedule_plain_is_equal
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
