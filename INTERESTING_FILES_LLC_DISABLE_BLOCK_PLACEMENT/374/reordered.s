	.text
	.file	""
	.globl	writeny                         # -- Begin function writeny
	.p2align	4, 0x90
	.type	writeny,@function
writeny:                                # @writeny
# %bb.0:                                # %entry
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB0_2
.LBB0_1:                                # %for.cond2.backedge
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rdx, %rcx
.LBB0_2:                                # %for.cond2
                                        # =>This Inner Loop Header: Depth=1
	subl	$1, %eax
	movq	%rdi, %rdx
	jae	.LBB0_1
# %bb.3:                                # %if.then
                                        #   in Loop: Header=BB0_2 Depth=1
	movb	$0, (%rcx)
	xorl	%edx, %edx
	jmp	.LBB0_1
.Lfunc_end0:
	.size	writeny, .Lfunc_end0-writeny
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
