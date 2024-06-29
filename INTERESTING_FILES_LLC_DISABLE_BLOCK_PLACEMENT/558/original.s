	.text
	.file	""
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function QDLDL_etree
.LCPI0_0:
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
.LCPI0_1:
	.quad	2                               # 0x2
	.quad	2                               # 0x2
.LCPI0_2:
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.text
	.globl	QDLDL_etree
	.p2align	4, 0x90
	.type	QDLDL_etree,@function
QDLDL_etree:                            # @QDLDL_etree
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	jg	.LBB0_3
# %bb.1:
	xorl	%eax, %eax
.LBB0_2:                                # %for.end44
	retq
.LBB0_3:                                # %for.body39.preheader
	cmpq	$4, %rdi
	jae	.LBB0_5
# %bb.4:
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.LBB0_8
.LBB0_5:                                # %vector.ph
	movabsq	$9223372036854775804, %rcx      # imm = 0x7FFFFFFFFFFFFFFC
	andq	%rdi, %rcx
	pxor	%xmm0, %xmm0
	movdqa	.LCPI0_0(%rip), %xmm1           # xmm1 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movdqa	.LCPI0_1(%rip), %xmm3           # xmm3 = [2,2]
	movdqa	.LCPI0_2(%rip), %xmm4           # xmm4 = [4,4]
	movq	%rcx, %rax
	pxor	%xmm2, %xmm2
.LBB0_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	%xmm1, %xmm5
	paddq	%xmm3, %xmm5
	por	%xmm5, %xmm2
	por	%xmm1, %xmm0
	paddq	%xmm4, %xmm1
	addq	$-4, %rax
	jne	.LBB0_6
# %bb.7:                                # %middle.block
	por	%xmm0, %xmm2
	pshufd	$238, %xmm2, %xmm0              # xmm0 = xmm2[2,3,2,3]
	por	%xmm2, %xmm0
	movq	%xmm0, %rax
	cmpq	%rdi, %rcx
	je	.LBB0_2
.LBB0_8:                                # %for.body39
                                        # =>This Inner Loop Header: Depth=1
	orq	%rcx, %rax
	incq	%rcx
	cmpq	%rcx, %rdi
	jne	.LBB0_8
	jmp	.LBB0_2
.Lfunc_end0:
	.size	QDLDL_etree, .Lfunc_end0-QDLDL_etree
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
