	.text
	.file	""
	.globl	chbev_2stage_                   # -- Begin function chbev_2stage_
	.p2align	4, 0x90
	.type	chbev_2stage_,@function
chbev_2stage_:                          # @chbev_2stage_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	testb	$1, 40(%rsp)
	movq	%r9, %rbx
	jne	.LBB0_2
# %bb.1:                                # %if.else47
	movq	%rdi, %r14
	movss	%xmm0, 4(%rsp)                  # 4-byte Spill
	callq	ilaenv2stage_@PLT
	movss	4(%rsp), %xmm0                  # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addq	$12, %rbx
	movss	%xmm0, (%r14)
	jmp	.LBB0_3
.LBB0_2:                                # %if.then44
	movl	$0, (%rbx)
	movq	32(%rsp), %rbx
.LBB0_3:                                # %if.end57
	movl	$0, (%rbx)
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	chbev_2stage_, .Lfunc_end0-chbev_2stage_
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
