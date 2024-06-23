	.text
	.file	""
	.globl	ZSTDMT_toFlushNow               # -- Begin function ZSTDMT_toFlushNow
	.p2align	4, 0x90
	.type	ZSTDMT_toFlushNow,@function
ZSTDMT_toFlushNow:                      # @ZSTDMT_toFlushNow
# %bb.0:                                # %entry
	movl	$1, %eax
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.end
	movl	0, %eax
	movzbl	%sil, %eax
	andl	$1, %eax
.LBB0_2:                                # %cleanup
	retq
.Lfunc_end0:
	.size	ZSTDMT_toFlushNow, .Lfunc_end0-ZSTDMT_toFlushNow
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
