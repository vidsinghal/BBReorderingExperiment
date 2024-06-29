	.text
	.file	""
	.globl	endElement                      # -- Begin function endElement
	.p2align	4, 0x90
	.type	endElement,@function
endElement:                             # @endElement
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testb	$1, %dil
	je	.LBB0_7
# %bb.1:                                # %if.then
	testb	$1, %sil
	je	.LBB0_6
# %bb.2:                                # %if.else157
	testb	$1, %dl
	jne	.LBB0_6
# %bb.3:                                # %if.else170
	testb	$1, %cl
	jne	.LBB0_6
# %bb.4:                                # %if.else200
	testb	$1, %r8b
	je	.LBB0_7
# %bb.5:                                # %if.else232
	movq	0, %rax
.LBB0_6:                                # %if.then154
	callq	gt_str_get@PLT
.LBB0_7:                                # %common.ret
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	endElement, .Lfunc_end0-endElement
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
