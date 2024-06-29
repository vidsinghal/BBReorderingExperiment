	.text
	.file	""
	.globl	_zip_string_equal               # -- Begin function _zip_string_equal
	.p2align	4, 0x90
	.type	_zip_string_equal,@function
_zip_string_equal:                      # @_zip_string_equal
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	sete	%al
	orb	%sil, %al
	testb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.end
	movl	0, %eax
.LBB0_2:                                # %return
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	_zip_string_equal, .Lfunc_end0-_zip_string_equal
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
