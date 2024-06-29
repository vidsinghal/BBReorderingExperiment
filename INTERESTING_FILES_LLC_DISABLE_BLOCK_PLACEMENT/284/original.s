	.text
	.file	""
	.globl	fxdiv_init_size_t               # -- Begin function fxdiv_init_size_t
	.p2align	4, 0x90
	.type	fxdiv_init_size_t,@function
fxdiv_init_size_t:                      # @fxdiv_init_size_t
# %bb.0:                                # %entry
	testq	%rsi, %rsi
	movq	$0, (%rdi)
	retq
.Lfunc_end0:
	.size	fxdiv_init_size_t, .Lfunc_end0-fxdiv_init_size_t
                                        # -- End function
	.globl	fxdiv_init_uint64_t             # -- Begin function fxdiv_init_uint64_t
	.p2align	4, 0x90
	.type	fxdiv_init_uint64_t,@function
fxdiv_init_uint64_t:                    # @fxdiv_init_uint64_t
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	retq
.Lfunc_end1:
	.size	fxdiv_init_uint64_t, .Lfunc_end1-fxdiv_init_uint64_t
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
