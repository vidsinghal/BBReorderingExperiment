	.text
	.file	""
	.globl	psa_get_empty_key_slot          # -- Begin function psa_get_empty_key_slot
	.p2align	4, 0x90
	.type	psa_get_empty_key_slot,@function
psa_get_empty_key_slot:                 # @psa_get_empty_key_slot
# %bb.0:                                # %entry
	testb	$1, %sil
	jne	.LBB0_8
# %bb.1:                                # %for.cond.preheader
	xorl	%eax, %eax
	xorl	%ecx, %ecx
.LBB0_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	testq	%rcx, %rcx
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%ecx, %ecx
	addq	$56, %rax
	jmp	.LBB0_2
.LBB0_4:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_2 Depth=1
	cmpl	$0, (%rdi)
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	xorl	%ecx, %ecx
	addq	$56, %rax
	jmp	.LBB0_2
.LBB0_6:                                # %land.lhs.true
                                        #   in Loop: Header=BB0_2 Depth=1
	movq	%rax, %rcx
	addq	$56, %rax
	jmp	.LBB0_2
.LBB0_8:                                # %if.then
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	psa_get_empty_key_slot, .Lfunc_end0-psa_get_empty_key_slot
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
