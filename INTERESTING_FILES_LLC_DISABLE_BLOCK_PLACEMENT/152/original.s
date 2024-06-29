	.text
	.file	""
	.globl	_pcre2_script_run_8             # -- Begin function _pcre2_script_run_8
	.p2align	4, 0x90
	.type	_pcre2_script_run_8,@function
_pcre2_script_run_8:                    # @_pcre2_script_run_8
# %bb.0:                                # %entry
	testl	%esi, %esi
	setne	%al
	testb	%dl, %al
	je	.LBB0_2
# %bb.1:                                # %if.then105
	movl	$1, (%rdi)
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	_pcre2_script_run_8, .Lfunc_end0-_pcre2_script_run_8
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
