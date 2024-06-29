	.text
	.file	""
	.globl	test_simde_wasm_f32x4_ceil      # -- Begin function test_simde_wasm_f32x4_ceil
	.p2align	4, 0x90
	.type	test_simde_wasm_f32x4_ceil,@function
test_simde_wasm_f32x4_ceil:             # @test_simde_wasm_f32x4_ceil
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsp, %rdi
	callq	simde_wasm_v128_store@PLT
	movss	(%rsp), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_1
	jnp	.LBB0_2
.LBB0_1:                                # %for.cond.i.i
                                        # =>This Inner Loop Header: Depth=1
	movss	0, %xmm0                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_1
.LBB0_2:                                # %for.cond.us.i.i
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.Lfunc_end0:
	.size	test_simde_wasm_f32x4_ceil, .Lfunc_end0-test_simde_wasm_f32x4_ceil
	.cfi_endproc
                                        # -- End function
	.globl	simde_test_wasm_f32x4_assert_equal_ # -- Begin function simde_test_wasm_f32x4_assert_equal_
	.p2align	4, 0x90
	.type	simde_test_wasm_f32x4_assert_equal_,@function
simde_test_wasm_f32x4_assert_equal_:    # @simde_test_wasm_f32x4_assert_equal_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsp, %rdi
	callq	simde_wasm_v128_store@PLT
	movss	(%rsp), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB1_1
	jnp	.LBB1_2
.LBB1_1:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movss	0, %xmm0                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB1_1
.LBB1_2:                                # %for.cond.us.i
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB1_2
.Lfunc_end1:
	.size	simde_test_wasm_f32x4_assert_equal_, .Lfunc_end1-simde_test_wasm_f32x4_assert_equal_
	.cfi_endproc
                                        # -- End function
	.globl	simde_assert_equal_vf32_        # -- Begin function simde_assert_equal_vf32_
	.p2align	4, 0x90
	.type	simde_assert_equal_vf32_,@function
simde_assert_equal_vf32_:               # @simde_assert_equal_vf32_
# %bb.0:                                # %entry
	movss	(%rdi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB2_1
	jnp	.LBB2_2
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movss	0, %xmm0                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB2_1
.LBB2_2:                                # %for.cond.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB2_2
.Lfunc_end2:
	.size	simde_assert_equal_vf32_, .Lfunc_end2-simde_assert_equal_vf32_
                                        # -- End function
	.globl	simde_test_equal_f32            # -- Begin function simde_test_equal_f32
	.p2align	4, 0x90
	.type	simde_test_equal_f32,@function
simde_test_equal_f32:                   # @simde_test_equal_f32
# %bb.0:                                # %entry
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	.LBB3_1
	jnp	.LBB3_2
.LBB3_1:                                # %if.then15
	movss	0, %xmm0                        # xmm0 = mem[0],zero,zero,zero
.LBB3_2:                                # %if.end28
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	simde_test_equal_f32, .Lfunc_end3-simde_test_equal_f32
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
