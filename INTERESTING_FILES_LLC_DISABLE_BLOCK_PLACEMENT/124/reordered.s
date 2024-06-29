	.text
	.file	""
	.globl	gdcmopenjp2opj_pi_create_decode # -- Begin function gdcmopenjp2opj_pi_create_decode
	.p2align	4, 0x90
	.type	gdcmopenjp2opj_pi_create_decode,@function
gdcmopenjp2opj_pi_create_decode:        # @gdcmopenjp2opj_pi_create_decode
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movl	(%rdi), %ebx
	movl	%ebx, %eax
	shll	$7, %eax
	leal	(%rax,%rbx,4), %edi
	callq	gdcmopenjp2opj_malloc@PLT
	movq	%rbx, %rdi
	callq	gdcmopenjp2opj_malloc@PLT
	movq	112, %rax
	movl	(%rax), %ebx
	movq	%rbx, %rdi
	callq	gdcmopenjp2opj_calloc@PLT
	testq	%rbx, %rbx
	je	.LBB0_2
# %bb.1:                                # %for.body.i
	movl	16, %edi
	callq	gdcmopenjp2opj_calloc@PLT
	movl	$0, 204
	movq	208, %rbx
	movq	5600, %rax
	movl	(%rax), %edi
	callq	gdcmopenjp2opj_calloc@PLT
	movq	$0, (%rbx)
	movl	$0, 8
.LBB0_2:                                # %opj_pi_create.exit
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	gdcmopenjp2opj_pi_create_decode, .Lfunc_end0-gdcmopenjp2opj_pi_create_decode
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
