	.text
	.file	""
	.globl	test_simde_vaddw_s8             # -- Begin function test_simde_vaddw_s8
	.p2align	4, 0x90
	.type	test_simde_vaddw_s8,@function
test_simde_vaddw_s8:                    # @test_simde_vaddw_s8
# %bb.0:                                # %for.body.peel
	jmp	.LBB0_2
.LBB0_1:                                # %for.cond.peel.next
                                        #   in Loop: Header=BB0_2 Depth=1
	testq	%rdi, %rdi
	jne	.LBB0_3
.LBB0_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, 0
	je	.LBB0_1
.LBB0_3:                                # %cleanup15
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	test_simde_vaddw_s8, .Lfunc_end0-test_simde_vaddw_s8
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
