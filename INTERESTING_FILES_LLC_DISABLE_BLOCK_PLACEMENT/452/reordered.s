	.text
	.file	""
	.globl	test_simde_vcltz_f32            # -- Begin function test_simde_vcltz_f32
	.p2align	4, 0x90
	.type	test_simde_vcltz_f32,@function
test_simde_vcltz_f32:                   # @test_simde_vcltz_f32
# %bb.0:                                # %entry
	xorl	%eax, %eax
	cmpl	$0, 0
	je	.LBB0_5
.LBB0_1:                                # %cleanup14
	retq
.LBB0_2:                                # %for.cond.4
	cmpl	$0, 0
	jne	.LBB0_1
# %bb.3:                                # %for.cond.5
	cmpl	$0, 0
	jne	.LBB0_1
# %bb.4:                                # %for.cond.6
	xorl	%eax, %eax
	cmpl	$0, 0
	sete	%al
	retq
.LBB0_5:                                # %for.cond
	cmpl	$0, 0
	jne	.LBB0_1
# %bb.6:                                # %for.cond.1
	cmpl	$0, 0
	jne	.LBB0_1
# %bb.7:                                # %for.cond.2
	cmpl	$0, 0
	jne	.LBB0_1
# %bb.8:                                # %for.cond.3
	cmpl	$0, 0
	je	.LBB0_2
	jmp	.LBB0_1
.Lfunc_end0:
	.size	test_simde_vcltz_f32, .Lfunc_end0-test_simde_vcltz_f32
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
