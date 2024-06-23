	.text
	.file	""
	.globl	test_BLAS_sdot                  # -- Begin function test_BLAS_sdot
	.p2align	4, 0x90
	.type	test_BLAS_sdot,@function
test_BLAS_sdot:                         # @test_BLAS_sdot
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	0, %eax
	cmpl	$33, %esi
	setl	%al
	testl	%edi, %edi
	setg	%cl
	testb	%al, %cl
	jne	.LBB0_2
# %bb.1:                                # %cdce.call
	cvtsi2sd	%edi, %xmm0
	cvtsi2sd	%esi, %xmm1
	callq	pow@PLT
.LBB0_2:                                # %cdce.end
	callq	power@PLT
.Lfunc_end0:
	.size	test_BLAS_sdot, .Lfunc_end0-test_BLAS_sdot
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
