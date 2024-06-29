	.text
	.file	""
	.globl	vtklibharu_HPDF_Image_LoadPngImage # -- Begin function vtklibharu_HPDF_Image_LoadPngImage
	.p2align	4, 0x90
	.type	vtklibharu_HPDF_Image_LoadPngImage,@function
vtklibharu_HPDF_Image_LoadPngImage:     # @vtklibharu_HPDF_Image_LoadPngImage
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -16
	movl	%edi, %ebx
	callq	vtklibharu_HPDF_DictStream_New@PLT
	testb	$1, %bl
	jne	.LBB0_3
# %bb.1:                                # %if.end9
	cmpq	$0, 0
	jne	.LBB0_4
# %bb.2:                                # %if.then.i
	movq	0, %rax
.LBB0_3:                                # %common.ret
	xorl	%eax, %eax
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB0_4:                                # %if.end.i
	.cfi_def_cfa_offset 32
	movl	12(%rsp), %eax
	jmp	.LBB0_3
.Lfunc_end0:
	.size	vtklibharu_HPDF_Image_LoadPngImage, .Lfunc_end0-vtklibharu_HPDF_Image_LoadPngImage
	.cfi_endproc
                                        # -- End function
	.globl	LoadPngData                     # -- Begin function LoadPngData
	.p2align	4, 0x90
	.type	LoadPngData,@function
LoadPngData:                            # @LoadPngData
# %bb.0:                                # %entry
	cmpq	$0, 0
	jne	.LBB1_3
# %bb.1:                                # %if.then
	movq	0, %rax
	xorl	%eax, %eax
	retq
.LBB1_3:                                # %if.end
	movl	-4(%rsp), %eax
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	LoadPngData, .Lfunc_end1-LoadPngData
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
