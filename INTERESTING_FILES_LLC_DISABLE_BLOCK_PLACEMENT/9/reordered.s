	.text
	.file	""
	.globl	_pcre_valid_utf                 # -- Begin function _pcre_valid_utf
	.p2align	4, 0x90
	.type	_pcre_valid_utf,@function
_pcre_valid_utf:                        # @_pcre_valid_utf
# %bb.0:                                # %entry
	testb	$1, %sil
	jne	.LBB0_3
# %bb.1:                                # %entry.split
	movl	$0, (%rdi)
.LBB0_2:                                # %for.cond4
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %for.cond4.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_3
.Lfunc_end0:
	.size	_pcre_valid_utf, .Lfunc_end0-_pcre_valid_utf
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
