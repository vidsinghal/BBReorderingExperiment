	.text
	.file	""
	.globl	bli_zgemmsup_rv_zen_asm_3x4m    # -- Begin function bli_zgemmsup_rv_zen_asm_3x4m
	.p2align	4, 0x90
	.type	bli_zgemmsup_rv_zen_asm_3x4m,@function
bli_zgemmsup_rv_zen_asm_3x4m:           # @bli_zgemmsup_rv_zen_asm_3x4m
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.end28
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	#APP
	movq	0, %r14
	movq	0, %r8
	movq	0, %r9
	leaq	(,%r8,8), %r8
	leaq	(,%r8,2), %r8
	leaq	(,%r9,8), %r9
	leaq	(,%r9,2), %r9
	movq	0, %r10
	leaq	(,%r10,8), %r10
	leaq	(,%r10,2), %r10
	movq	0, %r12
	movq	0, %rdi
	leaq	(,%rdi,8), %rdi
	leaq	(,%rdi,2), %rdi
	movq	0, %r11
.L.ZLOOP3X4I0:
	vzeroall
	movq	0, %rbx
	movq	%r14, %rax
	cmpq	$16, %rdi
	je	.L.ZCOLPFETCH0
.L.ZROWPFETCH0:
	jmp	.L.ZPOSTPFETCH0
.L.ZCOLPFETCH0:
	movq	0, %rsi
	leaq	(,%rsi,8), %rsi
.L.ZPOSTPFETCH0:
	movq	0, %rsi
	testq	%rsi, %rsi
	je	.L.ZCONSIDKLEFT0
.L.ZLOOPKITER0:
	vmovupd	(%rbx), %ymm0
	vmovupd	32(%rbx), %ymm1
	addq	%r10, %rbx
	vbroadcastsd	(%rax), %ymm2
	vfmadd231pd	%ymm0, %ymm2, %ymm4     # ymm4 = (ymm2 * ymm0) + ymm4
	vfmadd231pd	%ymm1, %ymm2, %ymm5     # ymm5 = (ymm2 * ymm1) + ymm5
	vbroadcastsd	(%rax,%r8), %ymm2
	vfmadd231pd	%ymm0, %ymm2, %ymm8     # ymm8 = (ymm2 * ymm0) + ymm8
	vfmadd231pd	%ymm1, %ymm2, %ymm9     # ymm9 = (ymm2 * ymm1) + ymm9
	vbroadcastsd	(%rax,%r8,2), %ymm2
	vfmadd231pd	%ymm0, %ymm2, %ymm12    # ymm12 = (ymm2 * ymm0) + ymm12
	vfmadd231pd	%ymm1, %ymm2, %ymm13    # ymm13 = (ymm2 * ymm1) + ymm13
	vbroadcastsd	8(%rax), %ymm3
	vfmadd231pd	%ymm0, %ymm3, %ymm6     # ymm6 = (ymm3 * ymm0) + ymm6
	vfmadd231pd	%ymm1, %ymm3, %ymm7     # ymm7 = (ymm3 * ymm1) + ymm7
	vbroadcastsd	8(%rax,%r8), %ymm3
	vfmadd231pd	%ymm0, %ymm3, %ymm10    # ymm10 = (ymm3 * ymm0) + ymm10
	vfmadd231pd	%ymm1, %ymm3, %ymm11    # ymm11 = (ymm3 * ymm1) + ymm11
	vbroadcastsd	8(%rax,%r8,2), %ymm3
	vfmadd231pd	%ymm0, %ymm3, %ymm14    # ymm14 = (ymm3 * ymm0) + ymm14
	vfmadd231pd	%ymm1, %ymm3, %ymm15    # ymm15 = (ymm3 * ymm1) + ymm15
	addq	%r9, %rax
	vmovupd	(%rbx), %ymm0
	vmovupd	32(%rbx), %ymm1
	addq	%r10, %rbx
	vbroadcastsd	(%rax), %ymm2
	vfmadd231pd	%ymm0, %ymm2, %ymm4     # ymm4 = (ymm2 * ymm0) + ymm4
	vfmadd231pd	%ymm1, %ymm2, %ymm5     # ymm5 = (ymm2 * ymm1) + ymm5
	vbroadcastsd	(%rax,%r8), %ymm2
	vfmadd231pd	%ymm0, %ymm2, %ymm8     # ymm8 = (ymm2 * ymm0) + ymm8
	vfmadd231pd	%ymm1, %ymm2, %ymm9     # ymm9 = (ymm2 * ymm1) + ymm9
	vbroadcastsd	(%rax,%r8,2), %ymm2
	vfmadd231pd	%ymm0, %ymm2, %ymm12    # ymm12 = (ymm2 * ymm0) + ymm12
	vfmadd231pd	%ymm1, %ymm2, %ymm13    # ymm13 = (ymm2 * ymm1) + ymm13
	vbroadcastsd	8(%rax), %ymm3
	vfmadd231pd	%ymm0, %ymm3, %ymm6     # ymm6 = (ymm3 * ymm0) + ymm6
	vfmadd231pd	%ymm1, %ymm3, %ymm7     # ymm7 = (ymm3 * ymm1) + ymm7
	vbroadcastsd	8(%rax,%r8), %ymm3
	vfmadd231pd	%ymm0, %ymm3, %ymm10    # ymm10 = (ymm3 * ymm0) + ymm10
	vfmadd231pd	%ymm1, %ymm3, %ymm11    # ymm11 = (ymm3 * ymm1) + ymm11
	vbroadcastsd	8(%rax,%r8,2), %ymm3
	vfmadd231pd	%ymm0, %ymm3, %ymm14    # ymm14 = (ymm3 * ymm0) + ymm14
	vfmadd231pd	%ymm1, %ymm3, %ymm15    # ymm15 = (ymm3 * ymm1) + ymm15
	addq	%r9, %rax
	vmovupd	(%rbx), %ymm0
	vmovupd	32(%rbx), %ymm1
	addq	%r10, %rbx
	vbroadcastsd	(%rax), %ymm2
	vfmadd231pd	%ymm0, %ymm2, %ymm4     # ymm4 = (ymm2 * ymm0) + ymm4
	vfmadd231pd	%ymm1, %ymm2, %ymm5     # ymm5 = (ymm2 * ymm1) + ymm5
	vbroadcastsd	(%rax,%r8), %ymm2
	vfmadd231pd	%ymm0, %ymm2, %ymm8     # ymm8 = (ymm2 * ymm0) + ymm8
	vfmadd231pd	%ymm1, %ymm2, %ymm9     # ymm9 = (ymm2 * ymm1) + ymm9
	vbroadcastsd	(%rax,%r8,2), %ymm2
	vfmadd231pd	%ymm0, %ymm2, %ymm12    # ymm12 = (ymm2 * ymm0) + ymm12
	vfmadd231pd	%ymm1, %ymm2, %ymm13    # ymm13 = (ymm2 * ymm1) + ymm13
	vbroadcastsd	8(%rax), %ymm3
	vfmadd231pd	%ymm0, %ymm3, %ymm6     # ymm6 = (ymm3 * ymm0) + ymm6
	vfmadd231pd	%ymm1, %ymm3, %ymm7     # ymm7 = (ymm3 * ymm1) + ymm7
	vbroadcastsd	8(%rax,%r8), %ymm3
	vfmadd231pd	%ymm0, %ymm3, %ymm10    # ymm10 = (ymm3 * ymm0) + ymm10
	vfmadd231pd	%ymm1, %ymm3, %ymm11    # ymm11 = (ymm3 * ymm1) + ymm11
	vbroadcastsd	8(%rax,%r8,2), %ymm3
	vfmadd231pd	%ymm0, %ymm3, %ymm14    # ymm14 = (ymm3 * ymm0) + ymm14
	vfmadd231pd	%ymm1, %ymm3, %ymm15    # ymm15 = (ymm3 * ymm1) + ymm15
	addq	%r9, %rax
	vmovupd	(%rbx), %ymm0
	vmovupd	32(%rbx), %ymm1
	addq	%r10, %rbx
	vbroadcastsd	(%rax), %ymm2
	vfmadd231pd	%ymm0, %ymm2, %ymm4     # ymm4 = (ymm2 * ymm0) + ymm4
	vfmadd231pd	%ymm1, %ymm2, %ymm5     # ymm5 = (ymm2 * ymm1) + ymm5
	vbroadcastsd	(%rax,%r8), %ymm2
	vfmadd231pd	%ymm0, %ymm2, %ymm8     # ymm8 = (ymm2 * ymm0) + ymm8
	vfmadd231pd	%ymm1, %ymm2, %ymm9     # ymm9 = (ymm2 * ymm1) + ymm9
	vbroadcastsd	(%rax,%r8,2), %ymm2
	vfmadd231pd	%ymm0, %ymm2, %ymm12    # ymm12 = (ymm2 * ymm0) + ymm12
	vfmadd231pd	%ymm1, %ymm2, %ymm13    # ymm13 = (ymm2 * ymm1) + ymm13
	vbroadcastsd	8(%rax), %ymm3
	vfmadd231pd	%ymm0, %ymm3, %ymm6     # ymm6 = (ymm3 * ymm0) + ymm6
	vfmadd231pd	%ymm1, %ymm3, %ymm7     # ymm7 = (ymm3 * ymm1) + ymm7
	vbroadcastsd	8(%rax,%r8), %ymm3
	vfmadd231pd	%ymm0, %ymm3, %ymm10    # ymm10 = (ymm3 * ymm0) + ymm10
	vfmadd231pd	%ymm1, %ymm3, %ymm11    # ymm11 = (ymm3 * ymm1) + ymm11
	vbroadcastsd	8(%rax,%r8,2), %ymm3
	vfmadd231pd	%ymm0, %ymm3, %ymm14    # ymm14 = (ymm3 * ymm0) + ymm14
	vfmadd231pd	%ymm1, %ymm3, %ymm15    # ymm15 = (ymm3 * ymm1) + ymm15
	addq	%r9, %rax
	decq	%rsi
	jne	.L.ZLOOPKITER0
.L.ZCONSIDKLEFT0:
	movq	0, %rsi
	testq	%rsi, %rsi
	je	.L.ZPOSTACCUM0
.L.ZLOOPKLEFT0:
	vmovupd	(%rbx), %ymm0
	vmovupd	32(%rbx), %ymm1
	addq	%r10, %rbx
	vbroadcastsd	(%rax), %ymm2
	vfmadd231pd	%ymm0, %ymm2, %ymm4     # ymm4 = (ymm2 * ymm0) + ymm4
	vfmadd231pd	%ymm1, %ymm2, %ymm5     # ymm5 = (ymm2 * ymm1) + ymm5
	vbroadcastsd	(%rax,%r8), %ymm2
	vfmadd231pd	%ymm0, %ymm2, %ymm8     # ymm8 = (ymm2 * ymm0) + ymm8
	vfmadd231pd	%ymm1, %ymm2, %ymm9     # ymm9 = (ymm2 * ymm1) + ymm9
	vbroadcastsd	(%rax,%r8,2), %ymm2
	vfmadd231pd	%ymm0, %ymm2, %ymm12    # ymm12 = (ymm2 * ymm0) + ymm12
	vfmadd231pd	%ymm1, %ymm2, %ymm13    # ymm13 = (ymm2 * ymm1) + ymm13
	vbroadcastsd	8(%rax), %ymm3
	vfmadd231pd	%ymm0, %ymm3, %ymm6     # ymm6 = (ymm3 * ymm0) + ymm6
	vfmadd231pd	%ymm1, %ymm3, %ymm7     # ymm7 = (ymm3 * ymm1) + ymm7
	vbroadcastsd	8(%rax,%r8), %ymm3
	vfmadd231pd	%ymm0, %ymm3, %ymm10    # ymm10 = (ymm3 * ymm0) + ymm10
	vfmadd231pd	%ymm1, %ymm3, %ymm11    # ymm11 = (ymm3 * ymm1) + ymm11
	vbroadcastsd	8(%rax,%r8,2), %ymm3
	vfmadd231pd	%ymm0, %ymm3, %ymm14    # ymm14 = (ymm3 * ymm0) + ymm14
	vfmadd231pd	%ymm1, %ymm3, %ymm15    # ymm15 = (ymm3 * ymm1) + ymm15
	addq	%r9, %rax
	decq	%rsi
	jne	.L.ZLOOPKLEFT0
.L.ZPOSTACCUM0:
	movq	%r12, %rcx
	vpermilpd	$5, %ymm6, %ymm6        # ymm6 = ymm6[1,0,3,2]
	vpermilpd	$5, %ymm7, %ymm7        # ymm7 = ymm7[1,0,3,2]
	vpermilpd	$5, %ymm10, %ymm10      # ymm10 = ymm10[1,0,3,2]
	vpermilpd	$5, %ymm11, %ymm11      # ymm11 = ymm11[1,0,3,2]
	vpermilpd	$5, %ymm14, %ymm14      # ymm14 = ymm14[1,0,3,2]
	vpermilpd	$5, %ymm15, %ymm15      # ymm15 = ymm15[1,0,3,2]
	vaddsubpd	%ymm6, %ymm4, %ymm4
	vaddsubpd	%ymm7, %ymm5, %ymm5
	vaddsubpd	%ymm10, %ymm8, %ymm8
	vaddsubpd	%ymm11, %ymm9, %ymm9
	vaddsubpd	%ymm14, %ymm12, %ymm12
	vaddsubpd	%ymm15, %ymm13, %ymm13
	movq	0, %rsi
	leaq	(,%rsi,8), %rsi
	leaq	(,%rsi,2), %rsi
	movb	0, %al
	cmpb	$255, %al
	jne	.L.ALPHA_NOT_MINUS10
	vxorpd	%ymm0, %ymm0, %ymm0
	vsubpd	%ymm4, %ymm0, %ymm4
	vsubpd	%ymm5, %ymm0, %ymm5
	vsubpd	%ymm8, %ymm0, %ymm8
	vsubpd	%ymm9, %ymm0, %ymm9
	vsubpd	%ymm12, %ymm0, %ymm12
	vsubpd	%ymm13, %ymm0, %ymm13
	jmp	.L.ALPHA_REAL_ONE0
.L.ALPHA_NOT_MINUS10:
	cmpb	$2, %al
	jne	.L.ALPHA_REAL_ONE0
	movq	0, %rax
	vbroadcastsd	(%rax), %ymm0
	vbroadcastsd	8(%rax), %ymm1
	vpermilpd	$5, %ymm4, %ymm3        # ymm3 = ymm4[1,0,3,2]
	vmulpd	%ymm0, %ymm4, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm4, %ymm4
	vpermilpd	$5, %ymm5, %ymm3        # ymm3 = ymm5[1,0,3,2]
	vmulpd	%ymm0, %ymm5, %ymm5
	vmulpd	%ymm1, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm5, %ymm5
	vpermilpd	$5, %ymm8, %ymm3        # ymm3 = ymm8[1,0,3,2]
	vmulpd	%ymm0, %ymm8, %ymm8
	vmulpd	%ymm1, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm8, %ymm8
	vpermilpd	$5, %ymm9, %ymm3        # ymm3 = ymm9[1,0,3,2]
	vmulpd	%ymm0, %ymm9, %ymm9
	vmulpd	%ymm1, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm9, %ymm9
	vpermilpd	$5, %ymm12, %ymm3       # ymm3 = ymm12[1,0,3,2]
	vmulpd	%ymm0, %ymm12, %ymm12
	vmulpd	%ymm1, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm12, %ymm12
	vpermilpd	$5, %ymm13, %ymm3       # ymm3 = ymm13[1,0,3,2]
	vmulpd	%ymm0, %ymm13, %ymm13
	vmulpd	%ymm1, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm13, %ymm13
.L.ALPHA_REAL_ONE0:
	movb	0, %al
	cmpb	$0, %al
	je	.L.ZBETAZERO0
	cmpq	$16, %rdi
	je	.L.ZCOLSTORED0
.L.ZROWSTORED0:
	leaq	(,%rsi,2), %rsi
	cmpb	$2, %al
	je	.L.ROW_BETA_NOT_REAL_ONE0
	cmpb	$255, %al
	je	.L.ROW_BETA_REAL_MINUS10
	vmovupd	(%rcx), %ymm0
	vaddpd	%ymm4, %ymm0, %ymm0
	vmovupd	%ymm0, (%rcx)
	vmovupd	(%rcx,%rsi), %ymm0
	vaddpd	%ymm5, %ymm0, %ymm0
	vmovupd	%ymm0, (%rcx,%rsi)
	addq	%rdi, %rcx
	vmovupd	(%rcx), %ymm0
	vaddpd	%ymm0, %ymm8, %ymm0
	vmovupd	%ymm0, (%rcx)
	vmovupd	(%rcx,%rsi), %ymm0
	vaddpd	%ymm0, %ymm9, %ymm0
	vmovupd	%ymm0, (%rcx,%rsi)
	addq	%rdi, %rcx
	vmovupd	(%rcx), %ymm0
	vaddpd	%ymm0, %ymm12, %ymm0
	vmovupd	%ymm0, (%rcx)
	vmovupd	(%rcx,%rsi), %ymm0
	vaddpd	%ymm0, %ymm13, %ymm0
	vmovupd	%ymm0, (%rcx,%rsi)
	jmp	.L.ZDONE0
.L.ROW_BETA_REAL_MINUS10:
	vmovupd	(%rcx), %ymm0
	vsubpd	%ymm0, %ymm4, %ymm0
	vmovupd	%ymm0, (%rcx)
	vmovupd	(%rcx,%rsi), %ymm0
	vsubpd	%ymm0, %ymm5, %ymm0
	vmovupd	%ymm0, (%rcx,%rsi)
	addq	%rdi, %rcx
	vmovupd	(%rcx), %ymm0
	vsubpd	%ymm0, %ymm8, %ymm0
	vmovupd	%ymm0, (%rcx)
	vmovupd	(%rcx,%rsi), %ymm0
	vsubpd	%ymm0, %ymm9, %ymm0
	vmovupd	%ymm0, (%rcx,%rsi)
	addq	%rdi, %rcx
	vmovupd	(%rcx), %ymm0
	vsubpd	%ymm0, %ymm12, %ymm0
	vmovupd	%ymm0, (%rcx)
	vmovupd	(%rcx,%rsi), %ymm0
	vsubpd	%ymm0, %ymm13, %ymm0
	vmovupd	%ymm0, (%rcx,%rsi)
	jmp	.L.ZDONE0
.L.ROW_BETA_NOT_REAL_ONE0:
	movq	0, %rbx
	vbroadcastsd	(%rbx), %ymm1
	vbroadcastsd	8(%rbx), %ymm2
	vmovupd	(%rcx), %ymm0
	vpermilpd	$5, %ymm0, %ymm3        # ymm3 = ymm0[1,0,3,2]
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm4, %ymm0, %ymm0
	vmovupd	%ymm0, (%rcx)
	vmovupd	(%rcx,%rsi), %ymm0
	vpermilpd	$5, %ymm0, %ymm3        # ymm3 = ymm0[1,0,3,2]
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm5, %ymm0, %ymm0
	vmovupd	%ymm0, (%rcx,%rsi)
	addq	%rdi, %rcx
	vmovupd	(%rcx), %ymm0
	vpermilpd	$5, %ymm0, %ymm3        # ymm3 = ymm0[1,0,3,2]
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm8, %ymm0
	vmovupd	%ymm0, (%rcx)
	vmovupd	(%rcx,%rsi), %ymm0
	vpermilpd	$5, %ymm0, %ymm3        # ymm3 = ymm0[1,0,3,2]
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm9, %ymm0
	vmovupd	%ymm0, (%rcx,%rsi)
	addq	%rdi, %rcx
	vmovupd	(%rcx), %ymm0
	vpermilpd	$5, %ymm0, %ymm3        # ymm3 = ymm0[1,0,3,2]
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm12, %ymm0
	vmovupd	%ymm0, (%rcx)
	vmovupd	(%rcx,%rsi), %ymm0
	vpermilpd	$5, %ymm0, %ymm3        # ymm3 = ymm0[1,0,3,2]
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm13, %ymm0
	vmovupd	%ymm0, (%rcx,%rsi)
	jmp	.L.ZDONE0
.L.ZCOLSTORED0:
	movq	0, %rbx
	vbroadcastsd	(%rbx), %ymm1
	vbroadcastsd	8(%rbx), %ymm2
	vmovupd	(%rcx), %xmm0
	vmovupd	(%rcx,%rsi), %xmm3
	vinsertf128	$1, %xmm3, %ymm0, %ymm0
	vpermilpd	$5, %ymm0, %ymm3        # ymm3 = ymm0[1,0,3,2]
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm4, %ymm0, %ymm4
	addq	%rdi, %rcx
	vmovupd	(%rcx), %xmm0
	vmovupd	(%rcx,%rsi), %xmm3
	vinsertf128	$1, %xmm3, %ymm0, %ymm0
	vpermilpd	$5, %ymm0, %ymm3        # ymm3 = ymm0[1,0,3,2]
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm8, %ymm8
	addq	%rdi, %rcx
	vmovupd	(%rcx), %xmm0
	vmovupd	(%rcx,%rsi), %xmm3
	vinsertf128	$1, %xmm3, %ymm0, %ymm0
	vpermilpd	$5, %ymm0, %ymm3        # ymm3 = ymm0[1,0,3,2]
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm12, %ymm12
	leaq	(%r12,%rsi,2), %rcx
	vmovupd	(%rcx), %xmm0
	vmovupd	(%rcx,%rsi), %xmm3
	vinsertf128	$1, %xmm3, %ymm0, %ymm0
	vpermilpd	$5, %ymm0, %ymm3        # ymm3 = ymm0[1,0,3,2]
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm5, %ymm0, %ymm5
	addq	%rdi, %rcx
	vmovupd	(%rcx), %xmm0
	vmovupd	(%rcx,%rsi), %xmm3
	vinsertf128	$1, %xmm3, %ymm0, %ymm0
	vpermilpd	$5, %ymm0, %ymm3        # ymm3 = ymm0[1,0,3,2]
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm9, %ymm9
	addq	%rdi, %rcx
	vmovupd	(%rcx), %xmm0
	vmovupd	(%rcx,%rsi), %xmm3
	vinsertf128	$1, %xmm3, %ymm0, %ymm0
	vpermilpd	$5, %ymm0, %ymm3        # ymm3 = ymm0[1,0,3,2]
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm3, %ymm3
	vaddsubpd	%ymm3, %ymm0, %ymm0
	vaddpd	%ymm0, %ymm13, %ymm13
	movq	%r12, %rcx
	vmovups	%xmm4, (%rcx)
	vmovups	%xmm8, 16(%rcx)
	vmovups	%xmm12, 32(%rcx)
	addq	%rsi, %rcx
	vextractf128	$1, %ymm4, %xmm4
	vextractf128	$1, %ymm8, %xmm8
	vextractf128	$1, %ymm12, %xmm12
	vmovups	%xmm4, (%rcx)
	vmovups	%xmm8, 16(%rcx)
	vmovups	%xmm12, 32(%rcx)
	addq	%rsi, %rcx
	vmovups	%xmm5, (%rcx)
	vmovups	%xmm9, 16(%rcx)
	vmovups	%xmm13, 32(%rcx)
	addq	%rsi, %rcx
	vextractf128	$1, %ymm5, %xmm5
	vextractf128	$1, %ymm9, %xmm9
	vextractf128	$1, %ymm13, %xmm13
	vmovups	%xmm5, (%rcx)
	vmovups	%xmm9, 16(%rcx)
	vmovups	%xmm13, 32(%rcx)
	jmp	.L.ZDONE0
.L.ZBETAZERO0:
	cmpq	$16, %rdi
	je	.L.ZCOLSTORBZ0
.L.ZROWSTORBZ0:
	leaq	(,%rsi,2), %rsi
	vmovupd	%ymm4, (%rcx)
	vmovupd	%ymm5, (%rcx,%rsi)
	addq	%rdi, %rcx
	vmovupd	%ymm8, (%rcx)
	vmovupd	%ymm9, (%rcx,%rsi)
	addq	%rdi, %rcx
	vmovupd	%ymm12, (%rcx)
	vmovupd	%ymm13, (%rcx,%rsi)
	jmp	.L.ZDONE0
.L.ZCOLSTORBZ0:
	vmovups	%xmm4, (%rcx)
	vmovups	%xmm8, 16(%rcx)
	vmovups	%xmm12, 32(%rcx)
	addq	%rsi, %rcx
	vextractf128	$1, %ymm4, %xmm4
	vextractf128	$1, %ymm8, %xmm8
	vextractf128	$1, %ymm12, %xmm12
	vmovups	%xmm4, (%rcx)
	vmovups	%xmm8, 16(%rcx)
	vmovups	%xmm12, 32(%rcx)
	addq	%rsi, %rcx
	vmovups	%xmm5, (%rcx)
	vmovups	%xmm9, 16(%rcx)
	vmovups	%xmm13, 32(%rcx)
	addq	%rsi, %rcx
	vextractf128	$1, %ymm5, %xmm5
	vextractf128	$1, %ymm9, %xmm9
	vextractf128	$1, %ymm13, %xmm13
	vmovups	%xmm5, (%rcx)
	vmovups	%xmm9, 16(%rcx)
	vmovups	%xmm13, 32(%rcx)
.L.ZDONE0:
	leaq	(%r12,%rdi,2), %r12
	leaq	(%r12,%rdi), %r12
	leaq	(%r14,%r8,2), %r14
	leaq	(%r14,%r8), %r14
	decq	%r11
	jne	.L.ZLOOP3X4I0
.L.ZRETURN0:

	#NO_APP
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %common.ret
	retq
.Lfunc_end0:
	.size	bli_zgemmsup_rv_zen_asm_3x4m, .Lfunc_end0-bli_zgemmsup_rv_zen_asm_3x4m
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
