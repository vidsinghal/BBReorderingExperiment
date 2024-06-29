	.text
	.file	""
	.globl	PyInit_vectorized               # -- Begin function PyInit_vectorized
	.p2align	4, 0x90
	.type	PyInit_vectorized,@function
PyInit_vectorized:                      # @PyInit_vectorized
# %bb.0:                                # %entry
	movq	0, %rax
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	PyInit_vectorized, .Lfunc_end0-PyInit_vectorized
                                        # -- End function
	.globl	__pyx_pw_6pandas_5_libs_6tslibs_10vectorized_7normalize_i8_timestamps # -- Begin function __pyx_pw_6pandas_5_libs_6tslibs_10vectorized_7normalize_i8_timestamps
	.p2align	4, 0x90
	.type	__pyx_pw_6pandas_5_libs_6tslibs_10vectorized_7normalize_i8_timestamps,@function
__pyx_pw_6pandas_5_libs_6tslibs_10vectorized_7normalize_i8_timestamps: # @__pyx_pw_6pandas_5_libs_6tslibs_10vectorized_7normalize_i8_timestamps
# %bb.0:                                # %entry
	movq	0, %rax
	cmpq	$1, %rdi
	je	.LBB1_3
# %bb.1:                                # %entry
	testq	%rdi, %rdi
	jne	.LBB1_4
# %bb.2:                                # %sw.bb12
	movq	0, %rax
.LBB1_3:                                # %sw.bb24
	movq	0, %rax
.LBB1_4:                                # %common.ret1
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	__pyx_pw_6pandas_5_libs_6tslibs_10vectorized_7normalize_i8_timestamps, .Lfunc_end1-__pyx_pw_6pandas_5_libs_6tslibs_10vectorized_7normalize_i8_timestamps
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
