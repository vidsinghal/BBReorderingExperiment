	.text
	.file	""
	.globl	vtkParse_NameLength             # -- Begin function vtkParse_NameLength
	.p2align	4, 0x90
	.type	vtkParse_NameLength,@function
vtkParse_NameLength:                    # @vtkParse_NameLength
# %bb.0:                                # %entry
	xorl	%eax, %eax
	cmpb	$58, (%rdi)
	sete	%al
	cmpb	$0, (%rdi,%rax)
	sete	%cl
	testb	%al, %cl
	je	.LBB0_3
# %bb.1:                                # %do.body.peel.next
	xorl	%eax, %eax
	cmpb	$58, 1(%rdi)
	sete	%al
	movzbl	(%rdi,%rax), %eax
.LBB0_2:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	testb	%al, %al
	je	.LBB0_2
.LBB0_3:                                # %do.end
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	vtkParse_NameLength, .Lfunc_end0-vtkParse_NameLength
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
