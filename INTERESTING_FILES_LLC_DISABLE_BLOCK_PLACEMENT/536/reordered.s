	.text
	.file	""
	.globl	simde_test_wasm_i8x16_assert_equal_ # -- Begin function simde_test_wasm_i8x16_assert_equal_
	.p2align	4, 0x90
	.type	simde_test_wasm_i8x16_assert_equal_,@function
simde_test_wasm_i8x16_assert_equal_:    # @simde_test_wasm_i8x16_assert_equal_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	simde_wasm_v128_store@PLT
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	simde_test_wasm_i8x16_assert_equal_, .Lfunc_end0-simde_test_wasm_i8x16_assert_equal_
	.cfi_endproc
                                        # -- End function
	.globl	simde_assert_equal_vi8_         # -- Begin function simde_assert_equal_vi8_
	.p2align	4, 0x90
	.type	simde_assert_equal_vi8_,@function
simde_assert_equal_vi8_:                # @simde_assert_equal_vi8_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	testq	%rdi, %rdi
	setne	%al
	andb	16(%rsp), %al
	cmpb	$1, %al
	jne	.LBB1_2
# %bb.1:                                # %if.then
	xorl	%eax, %eax
	callq	simde_test_debug_printf_@PLT
.LBB1_2:                                # %common.ret
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	simde_assert_equal_vi8_, .Lfunc_end1-simde_assert_equal_vi8_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
