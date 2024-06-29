	.text
	.file	""
	.globl	stream_read_word                # -- Begin function stream_read_word
	.p2align	4, 0x90
	.type	stream_read_word,@function
stream_read_word:                       # @stream_read_word
# %bb.0:                                # %entry
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	stream_read_word, .Lfunc_end0-stream_read_word
                                        # -- End function
	.globl	stream_read_bits                # -- Begin function stream_read_bits
	.p2align	4, 0x90
	.type	stream_read_bits,@function
stream_read_bits:                       # @stream_read_bits
# %bb.0:                                # %entry
	movzbl	(%rdi), %eax
	testb	$1, %sil
	jne	.LBB1_2
# %bb.1:                                # %if.else23
	movl	%edx, %ecx
	shrl	%cl, %eax
	movb	%al, (%rdi)
	xorl	%eax, %eax
	retq
.LBB1_2:                                # %do.end
	andl	$1, %eax
	retq
.Lfunc_end1:
	.size	stream_read_bits, .Lfunc_end1-stream_read_bits
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
