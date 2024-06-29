	.text
	.file	""
	.globl	ZSTDMT_toFlushNow               # -- Begin function ZSTDMT_toFlushNow
	.p2align	4, 0x90
	.type	ZSTDMT_toFlushNow,@function
ZSTDMT_toFlushNow:                      # @ZSTDMT_toFlushNow
# %bb.0:                                # %entry
	testb	$1, %sil
	je	.LBB0_5
# %bb.1:
	xorl	%eax, %eax
	retq
.LBB0_3:                                # %cond.false4
	movq	(%rdx), %rax
	orq	%rcx, %rax
	retq
.LBB0_5:                                # %if.end
	xorl	%ecx, %ecx
	cmpq	$2, (%rdi)
	setb	%cl
	jb	.LBB0_3
# %bb.6:
	xorl	%eax, %eax
	orq	%rcx, %rax
	retq
.Lfunc_end0:
	.size	ZSTDMT_toFlushNow, .Lfunc_end0-ZSTDMT_toFlushNow
                                        # -- End function
	.globl	ZSTDMT_initCStream_internal     # -- Begin function ZSTDMT_initCStream_internal
	.p2align	4, 0x90
	.type	ZSTDMT_initCStream_internal,@function
ZSTDMT_initCStream_internal:            # @ZSTDMT_initCStream_internal
# %bb.0:                                # %entry
	movl	0, %eax
	testb	$1, %dil
	je	.LBB1_2
# %bb.1:                                # %if.then18
	movl	0, %eax
.LBB1_2:                                # %if.end24
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	ZSTDMT_initCStream_internal, .Lfunc_end1-ZSTDMT_initCStream_internal
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
