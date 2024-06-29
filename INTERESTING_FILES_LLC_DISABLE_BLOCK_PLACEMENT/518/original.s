	.text
	.file	""
	.globl	umfdi_local_search              # -- Begin function umfdi_local_search
	.p2align	4, 0x90
	.type	umfdi_local_search,@function
umfdi_local_search:                     # @umfdi_local_search
# %bb.0:                                # %entry
	testl	%esi, %esi
	sete	%al
	andb	%dl, %al
	cmpb	$1, %al
	jne	.LBB0_2
# %bb.1:                                # %if.then
	movl	$0, (%rdi)
.LBB0_2:                                # %for.cond.preheader
	testb	$1, %dl
	je	.LBB0_4
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_3
.LBB0_4:                                # %for.end
	movsd	%xmm0, (%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	umfdi_local_search, .Lfunc_end0-umfdi_local_search
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
