	.text
	.file	""
	.globl	gdcmjpeg16_jpeg_idct_4x4        # -- Begin function gdcmjpeg16_jpeg_idct_4x4
	.p2align	4, 0x90
	.type	gdcmjpeg16_jpeg_idct_4x4,@function
gdcmjpeg16_jpeg_idct_4x4:               # @gdcmjpeg16_jpeg_idct_4x4
# %bb.0:                                # %entry
	testl	%edx, %edx
	je	.LBB0_2
# %bb.1:                                # %if.end.peel
	movl	$0, (%rdi)
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	testl	%esi, %esi
	je	.LBB0_2
	jmp	.LBB0_2
.Lfunc_end0:
	.size	gdcmjpeg16_jpeg_idct_4x4, .Lfunc_end0-gdcmjpeg16_jpeg_idct_4x4
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
