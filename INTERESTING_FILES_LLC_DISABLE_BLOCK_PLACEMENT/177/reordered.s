	.text
	.file	""
	.globl	umfzi_kernel                    # -- Begin function umfzi_kernel
	.p2align	4, 0x90
	.type	umfzi_kernel,@function
umfzi_kernel:                           # @umfzi_kernel
# %bb.0:                                # %entry
	orl	$1, %edi
	cmpl	$128, %edi
	setb	%al
	movl	$0, (%rdx)
	testb	%al, %sil
	je	.LBB0_3
# %bb.1:                                # %for.body36.us.preheader
	movl	%edi, %eax
	movl	$0, (%rdx,%rax,4)
.LBB0_2:                                # %for.body36.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.LBB0_3:                                # %for.body36
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	umfzi_kernel, .Lfunc_end0-umfzi_kernel
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
