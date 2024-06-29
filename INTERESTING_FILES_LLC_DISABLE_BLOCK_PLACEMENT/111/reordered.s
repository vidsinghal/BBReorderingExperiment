	.text
	.file	""
	.globl	vtklibproj_pj_chamb             # -- Begin function vtklibproj_pj_chamb
	.p2align	4, 0x90
	.type	vtklibproj_pj_chamb,@function
vtklibproj_pj_chamb:                    # @vtklibproj_pj_chamb
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	sete	%al
	andb	%sil, %al
	cmpb	$1, %al
	je	.LBB0_2
# %bb.1:                                # %if.end3
	movq	$0, (%rdi)
.LBB0_2:                                # %return
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	vtklibproj_pj_chamb, .Lfunc_end0-vtklibproj_pj_chamb
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
