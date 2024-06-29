	.text
	.file	""
	.globl	umfzl_uhsolve                   # -- Begin function umfzl_uhsolve
	.p2align	4, 0x90
	.type	umfzl_uhsolve,@function
umfzl_uhsolve:                          # @umfzl_uhsolve
	.cfi_startproc
# %bb.0:                                # %entry
	testb	$1, %dl
	je	.LBB0_2
# %bb.1:                                # %for.body
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	xorps	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	xorps	%xmm2, %xmm2
	xorps	%xmm3, %xmm3
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	*(%rbx)
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	movq	%rax, 0
	movq	%rcx, 8
	movq	(%rbx), %rax
	movq	(%r14), %rcx
	movq	(%rax), %rax
	shlq	$4, %rax
	movsd	(%r14,%rax), %xmm0              # xmm0 = mem[0],zero
	subsd	(%rcx), %xmm0
	movsd	%xmm0, (%rbx)
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	.cfi_restore %rbx
	.cfi_restore %r14
.LBB0_2:                                # %common.ret
	xorpd	%xmm0, %xmm0
	retq
.Lfunc_end0:
	.size	umfzl_uhsolve, .Lfunc_end0-umfzl_uhsolve
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
