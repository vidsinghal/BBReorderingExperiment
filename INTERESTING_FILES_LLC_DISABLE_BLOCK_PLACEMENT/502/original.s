	.text
	.file	""
	.globl	try_reduce_to_chain             # -- Begin function try_reduce_to_chain
	.p2align	4, 0x90
	.type	try_reduce_to_chain,@function
try_reduce_to_chain:                    # @try_reduce_to_chain
	.cfi_startproc
# %bb.0:                                # %entry
	movq	(%rdx), %rax
	testq	%rax, %rax
	sete	%cl
	andb	%dil, %cl
	cmpb	$1, %cl
	je	.LBB0_2
# %bb.1:                                # %if.end
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%ecx, %ecx
	testq	%rax, %rax
	cmovel	%ecx, %esi
	movq	0, %rax
	movl	%esi, (%rdx)
	callq	sort_segments@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	try_reduce_to_chain, .Lfunc_end0-try_reduce_to_chain
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
