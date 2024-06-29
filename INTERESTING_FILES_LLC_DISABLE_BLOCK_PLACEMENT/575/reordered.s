	.text
	.file	""
	.globl	test_simde_vrbit_s8             # -- Begin function test_simde_vrbit_s8
	.p2align	4, 0x90
	.type	test_simde_vrbit_s8,@function
test_simde_vrbit_s8:                    # @test_simde_vrbit_s8
# %bb.0:                                # %entry
	xorl	%eax, %eax
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movsd	(%rax), %xmm0                   # xmm0 = mem[0],zero
	movl	$0, -8(%rsp)
	cmpb	$0, (%rax)
	jne	.LBB0_3
# %bb.2:                                # %simde_test_arm_neon_assert_equal_i8x8_.exit
                                        #   in Loop: Header=BB0_1 Depth=1
	addq	$16, %rax
	jmp	.LBB0_1
.LBB0_3:                                # %if.then.i.i
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, 0
	addq	$16, %rax
	jmp	.LBB0_1
.Lfunc_end0:
	.size	test_simde_vrbit_s8, .Lfunc_end0-test_simde_vrbit_s8
                                        # -- End function
	.globl	simde_test_arm_neon_assert_equal_i8x8_ # -- Begin function simde_test_arm_neon_assert_equal_i8x8_
	.p2align	4, 0x90
	.type	simde_test_arm_neon_assert_equal_i8x8_,@function
simde_test_arm_neon_assert_equal_i8x8_: # @simde_test_arm_neon_assert_equal_i8x8_
# %bb.0:                                # %entry
	movl	$0, -8(%rsp)
	cmpb	$0, (%rax)
	je	.LBB1_2
# %bb.1:                                # %if.then.i
	movl	$0, 0
.LBB1_2:                                # %simde_assert_equal_vi8_.exit
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	simde_test_arm_neon_assert_equal_i8x8_, .Lfunc_end1-simde_test_arm_neon_assert_equal_i8x8_
                                        # -- End function
	.globl	simde_assert_equal_vi8_         # -- Begin function simde_assert_equal_vi8_
	.p2align	4, 0x90
	.type	simde_assert_equal_vi8_,@function
simde_assert_equal_vi8_:                # @simde_assert_equal_vi8_
# %bb.0:                                # %entry
	cmpb	$0, (%rax)
	je	.LBB2_2
# %bb.1:                                # %if.then
	movl	$0, 0
.LBB2_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	simde_assert_equal_vi8_, .Lfunc_end2-simde_assert_equal_vi8_
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
