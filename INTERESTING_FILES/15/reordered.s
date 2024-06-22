	.text
	.file	""
	.globl	test_simde_mm512_packus_epi16   # -- Begin function test_simde_mm512_packus_epi16
	.p2align	4, 0x90
	.type	test_simde_mm512_packus_epi16,@function
test_simde_mm512_packus_epi16:          # @test_simde_mm512_packus_epi16
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_1
# %bb.3:                                # %for.body.preheader
	testb	$1, %sil
	je	.LBB0_4
# %bb.2:                                # %for.body.us
	movl	0, %eax
	xorl	%eax, %eax
	retq
	.p2align	4, 0x90
.LBB0_4:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	0, %eax
	jmp	.LBB0_4
.LBB0_1:                                # %cleanup17
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	test_simde_mm512_packus_epi16, .Lfunc_end0-test_simde_mm512_packus_epi16
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
