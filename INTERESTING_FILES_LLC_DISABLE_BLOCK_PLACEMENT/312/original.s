	.text
	.file	""
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function s_calculate_chunk_line_size
.LCPI0_0:
	.quad	14                              # 0xe
	.quad	15                              # 0xf
.LCPI0_1:
	.quad	12                              # 0xc
	.quad	13                              # 0xd
.LCPI0_2:
	.quad	10                              # 0xa
	.quad	11                              # 0xb
.LCPI0_3:
	.quad	8                               # 0x8
	.quad	9                               # 0x9
.LCPI0_4:
	.quad	6                               # 0x6
	.quad	7                               # 0x7
.LCPI0_5:
	.quad	4                               # 0x4
	.quad	5                               # 0x5
.LCPI0_6:
	.quad	2                               # 0x2
	.quad	3                               # 0x3
.LCPI0_7:
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI0_8:
	.quad	16                              # 0x10
	.quad	16                              # 0x10
	.text
	.globl	s_calculate_chunk_line_size
	.p2align	4, 0x90
	.type	s_calculate_chunk_line_size,@function
s_calculate_chunk_line_size:            # @s_calculate_chunk_line_size
# %bb.0:                                # %entry
	incq	%rdi
	cmpq	$16, %rdi
	jae	.LBB0_2
# %bb.1:
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	jmp	.LBB0_6
.LBB0_2:                                # %vector.ph
	movq	%rdi, %rcx
	andq	$-16, %rcx
	movdqa	.LCPI0_0(%rip), %xmm0           # xmm0 = [14,15]
	movdqa	.LCPI0_1(%rip), %xmm1           # xmm1 = [12,13]
	movdqa	.LCPI0_2(%rip), %xmm2           # xmm2 = [10,11]
	movdqa	.LCPI0_3(%rip), %xmm3           # xmm3 = [8,9]
	movdqa	.LCPI0_4(%rip), %xmm4           # xmm4 = [6,7]
	movdqa	.LCPI0_5(%rip), %xmm5           # xmm5 = [4,5]
	movdqa	.LCPI0_6(%rip), %xmm6           # xmm6 = [2,3]
	movdqa	.LCPI0_7(%rip), %xmm7           # xmm7 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movdqa	.LCPI0_8(%rip), %xmm8           # xmm8 = [16,16]
	movq	%rcx, %rax
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm9
	paddq	%xmm8, %xmm7
	paddq	%xmm8, %xmm6
	paddq	%xmm8, %xmm5
	paddq	%xmm8, %xmm4
	paddq	%xmm8, %xmm3
	paddq	%xmm8, %xmm2
	paddq	%xmm8, %xmm1
	paddq	%xmm8, %xmm0
	addq	$-16, %rax
	jne	.LBB0_3
# %bb.4:                                # %middle.block
	cmpq	%rcx, %rdi
	je	.LBB0_8
# %bb.5:
	pshufd	$238, %xmm9, %xmm0              # xmm0 = xmm9[2,3,2,3]
	movq	%xmm0, %rdx
.LBB0_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdx, %rax
	movq	%rcx, %rdx
	incq	%rcx
	cmpq	%rcx, %rdi
	jne	.LBB0_6
# %bb.7:                                # %for.cond.cleanup
	retq
.LBB0_8:
	movq	%xmm9, %rax
	retq
.Lfunc_end0:
	.size	s_calculate_chunk_line_size, .Lfunc_end0-s_calculate_chunk_line_size
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
