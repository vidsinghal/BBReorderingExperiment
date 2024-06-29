	.text
	.file	""
	.globl	xnn_qu8_igemm_minmax_fp32_ukernel_3x4__scalar_imagic # -- Begin function xnn_qu8_igemm_minmax_fp32_ukernel_3x4__scalar_imagic
	.p2align	4, 0x90
	.type	xnn_qu8_igemm_minmax_fp32_ukernel_3x4__scalar_imagic,@function
xnn_qu8_igemm_minmax_fp32_ukernel_3x4__scalar_imagic: # @xnn_qu8_igemm_minmax_fp32_ukernel_3x4__scalar_imagic
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	leaq	-1(%rdi), %r14
	movq	%rdi, %r15
	andq	$-32, %r15
	movl	%ebx, %eax
	andl	$31, %eax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%rdi, %r13
	andq	$-8, %r13
	movl	%ebx, %ebp
	andl	$7, %ebp
                                        # implicit-def: $r12
.LBB0_1:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
                                        #     Child Loop BB0_4 Depth 2
                                        #     Child Loop BB0_13 Depth 2
	movq	%rbx, %rcx
	movq	%r12, %rax
	cmpq	$8, %rbx
	jb	.LBB0_12
# %bb.2:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%ecx, %ecx
	cmpq	$32, %rbx
	jae	.LBB0_7
.LBB0_3:                                # %vec.epilog.ph
                                        #   in Loop: Header=BB0_1 Depth=1
	leaq	(%r12,%r13), %rax
.LBB0_4:                                # %vec.epilog.vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rdx
	addq	$8, %rcx
	cmpq	%rcx, %r13
	jne	.LBB0_4
# %bb.5:                                # %vec.epilog.middle.block
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%rbp, %rcx
	cmpq	%rbx, %r13
	jne	.LBB0_12
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	movq	(%r12,%rdx), %xmm0              # xmm0 = mem[0],zero
	pextrw	$3, %xmm0, %eax
	shrl	$8, %eax
	jmp	.LBB0_15
.LBB0_7:                                # %vector.body
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	addq	$32, %rcx
	cmpq	%rcx, %r15
	jne	.LBB0_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB0_1 Depth=1
	cmpq	%rbx, %r15
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_1 Depth=1
	movdqu	16(%r12,%rax), %xmm0
	pextrw	$7, %xmm0, %eax
	shrl	$8, %eax
	jmp	.LBB0_15
.LBB0_10:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%r15, %rcx
	testb	$24, %bl
	jne	.LBB0_3
# %bb.11:                               #   in Loop: Header=BB0_1 Depth=1
	leaq	(%r12,%r15), %rax
	movq	(%rsp), %rcx                    # 8-byte Reload
.LBB0_12:                               # %do.body54.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	xorl	%esi, %esi
.LBB0_13:                               # %do.body54
                                        #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rsi, %rdx
	incq	%rsi
	cmpq	%rsi, %rcx
	jne	.LBB0_13
# %bb.14:                               #   in Loop: Header=BB0_1 Depth=1
	movzbl	(%rax,%rdx), %eax
.LBB0_15:                               # %do.end
                                        #   in Loop: Header=BB0_1 Depth=1
	addq	%r14, %r12
	movzbl	%al, %eax
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	callq	fp32_to_bits@PLT
	jmp	.LBB0_1
.Lfunc_end0:
	.size	xnn_qu8_igemm_minmax_fp32_ukernel_3x4__scalar_imagic, .Lfunc_end0-xnn_qu8_igemm_minmax_fp32_ukernel_3x4__scalar_imagic
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
