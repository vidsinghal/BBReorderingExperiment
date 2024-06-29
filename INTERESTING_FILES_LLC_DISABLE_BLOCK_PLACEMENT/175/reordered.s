	.text
	.file	""
	.globl	string_alloc                    # -- Begin function string_alloc
	.p2align	4, 0x90
	.type	string_alloc,@function
string_alloc:                           # @string_alloc
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	jne	.LBB0_3
# %bb.1:
                                        # implicit-def: $rax
	retq
.LBB0_3:                                # %if.end
	movq	-16, %rax
	addq	8, %rax
	retq
.Lfunc_end0:
	.size	string_alloc, .Lfunc_end0-string_alloc
                                        # -- End function
	.globl	string_ndup                     # -- Begin function string_ndup
	.p2align	4, 0x90
	.type	string_ndup,@function
string_ndup:                            # @string_ndup
# %bb.0:                                # %entry
	testq	%rsi, %rsi
	jne	.LBB1_3
# %bb.1:
                                        # implicit-def: $rax
	movb	$0, (%rdi)
	retq
.LBB1_3:                                # %string_alloc.exit
	movq	-16, %rax
	testq	%rax, %rax
	je	.LBB1_5
# %bb.4:
	addq	8, %rax
	movb	$0, (%rdi)
	retq
.LBB1_5:
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	string_ndup, .Lfunc_end1-string_ndup
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
