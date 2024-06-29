	.text
	.file	""
	.globl	gdcmjpeg16_jpeg_idct_4x4        # -- Begin function gdcmjpeg16_jpeg_idct_4x4
	.p2align	4, 0x90
	.type	gdcmjpeg16_jpeg_idct_4x4,@function
gdcmjpeg16_jpeg_idct_4x4:               # @gdcmjpeg16_jpeg_idct_4x4
# %bb.0:                                # %entry
	testl	%edx, %edx
	jne	.LBB0_2
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_1
.LBB0_2:                                # %if.end.peel
	movl	$0, (%rdi)
	jmp	.LBB0_1
.Lfunc_end0:
	.size	gdcmjpeg16_jpeg_idct_4x4, .Lfunc_end0-gdcmjpeg16_jpeg_idct_4x4
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
