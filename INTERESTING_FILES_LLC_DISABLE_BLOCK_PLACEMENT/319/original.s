	.text
	.file	""
	.globl	_zip_cdir_grow                  # -- Begin function _zip_cdir_grow
	.p2align	4, 0x90
	.type	_zip_cdir_grow,@function
_zip_cdir_grow:                         # @_zip_cdir_grow
# %bb.0:                                # %entry
	testq	%rsi, %rsi
	sete	%al
	testb	%r9b, %al
	je	.LBB0_2
# %bb.1:                                # %if.then3
	movl	$0, 0
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %if.end4
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	_zip_cdir_grow, .Lfunc_end0-_zip_cdir_grow
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
