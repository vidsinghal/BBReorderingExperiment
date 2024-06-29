	.text
	.file	""
	.globl	run_tests                       # -- Begin function run_tests
	.p2align	4, 0x90
	.type	run_tests,@function
run_tests:                              # @run_tests
# %bb.0:                                # %entry
	retq
.Lfunc_end0:
	.size	run_tests, .Lfunc_end0-run_tests
                                        # -- End function
	.globl	encode_null                     # -- Begin function encode_null
	.p2align	4, 0x90
	.type	encode_null,@function
encode_null:                            # @encode_null
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebx
	movl	%esi, %ebp
	movl	%edi, %r14d
	callq	json_dumps@PLT
	testb	$1, %r14b
	je	.LBB1_3
# %bb.1:                                # %if.end
	testb	$1, %bpl
	je	.LBB1_4
# %bb.2:                                # %if.end26
	movl	0, %eax
	testb	$1, %bl
	je	.LBB1_5
.LBB1_3:                                # %common.ret
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB1_4:                                # %do.body22
	.cfi_def_cfa_offset 32
	xorl	%eax, %eax
	callq	fprintf@PLT
.LBB1_5:                                # %do.body30
	movl	0, %eax
	xorl	%eax, %eax
	callq	fprintf@PLT
.Lfunc_end1:
	.size	encode_null, .Lfunc_end1-encode_null
	.cfi_endproc
                                        # -- End function
	.globl	encode_twice                    # -- Begin function encode_twice
	.p2align	4, 0x90
	.type	encode_twice,@function
encode_twice:                           # @encode_twice
# %bb.0:                                # %entry
	retq
.Lfunc_end2:
	.size	encode_twice, .Lfunc_end2-encode_twice
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
