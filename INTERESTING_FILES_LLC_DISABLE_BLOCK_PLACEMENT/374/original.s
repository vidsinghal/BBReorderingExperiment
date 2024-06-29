	.text
	.file	""
	.globl	writeny                         # -- Begin function writeny
	.p2align	4, 0x90
	.type	writeny,@function
writeny:                                # @writeny
# %bb.0:                                # %entry
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB0_1:                                # %for.cond2
                                        # =>This Inner Loop Header: Depth=1
	subl	$1, %eax
	movq	%rdi, %rdx
	jb	.LBB0_3
# %bb.2:                                # %for.cond2.backedge
                                        #   in Loop: Header=BB0_1 Depth=1
	movq	%rdx, %rcx
	jmp	.LBB0_1
.LBB0_3:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movb	$0, (%rcx)
	xorl	%edx, %edx
	movq	%rdx, %rcx
	jmp	.LBB0_1
.Lfunc_end0:
	.size	writeny, .Lfunc_end0-writeny
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
