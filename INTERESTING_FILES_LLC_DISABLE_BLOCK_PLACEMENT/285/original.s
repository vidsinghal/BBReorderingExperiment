	.text
	.file	""
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	testb	$1, %sil
	je	.LBB0_3
# %bb.1:                                # %for.body.lr.ph
	movq	%rdx, %rbx
	shlq	$4, %rdi
	addq	%rdi, %rbx
.LBB0_2:                                # %for.body.us
                                        # =>This Inner Loop Header: Depth=1
	callq	*(%rbx)
	movl	0, %eax
	jmp	.LBB0_2
.LBB0_3:                                # %for.cond.cleanup
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	test_simde_mm_blend_pd          # -- Begin function test_simde_mm_blend_pd
	.p2align	4, 0x90
	.type	test_simde_mm_blend_pd,@function
test_simde_mm_blend_pd:                 # @test_simde_mm_blend_pd
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	callq	simde_mm_set_pd@PLT
	movaps	0, %xmm0
	movaps	0, %xmm0
	movaps	0, %xmm0
	movaps	0, %xmm0
	movaps	0, %xmm0
	movaps	0, %xmm0
	movaps	0, %xmm0
	movaps	0, %xmm0
	xorps	%xmm0, %xmm0
	movaps	%xmm0, (%rbx)
	movaps	0, %xmm1
	movaps	0, %xmm1
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	callq	simde__m128d_to_private@PLT
	movaps	(%rbx), %xmm0
	jmp	.LBB1_1
.Lfunc_end1:
	.size	test_simde_mm_blend_pd, .Lfunc_end1-test_simde_mm_blend_pd
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
