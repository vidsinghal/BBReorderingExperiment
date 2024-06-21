	.text
	.file	""
	.globl	fxdiv_init_uint64_t             # -- Begin function fxdiv_init_uint64_t
	.p2align	4, 0x90
	.type	fxdiv_init_uint64_t,@function
fxdiv_init_uint64_t:                    # @fxdiv_init_uint64_t
# %bb.0:                                # %entry
	movq	%rsi, %rax
	movq	%rsi, %rcx
	orq	%rdi, %rcx
	shrq	$32, %rcx
	je	.LBB0_1
# %bb.2:
	xorl	%edx, %edx
	divq	%rdi
	jmp	.LBB0_3
.LBB0_1:
                                        # kill: def $eax killed $eax killed $rax
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $edx killed $edx def $rdx
	.p2align	4, 0x90
.LBB0_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	leaq	(%rdx,%rdi), %rax
	testq	%rdx, %rdx
	movq	%rax, %rdx
	je	.LBB0_3
# %bb.4:                                # %while.end
	retq
.Lfunc_end0:
	.size	fxdiv_init_uint64_t, .Lfunc_end0-fxdiv_init_uint64_t
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
