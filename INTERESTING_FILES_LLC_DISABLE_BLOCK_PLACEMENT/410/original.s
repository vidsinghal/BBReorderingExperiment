	.text
	.file	""
	.globl	GetZFPType                      # -- Begin function GetZFPType
	.p2align	4, 0x90
	.type	GetZFPType,@function
GetZFPType:                             # @GetZFPType
# %bb.0:                                # %entry
	cmpl	$7, %edi
	je	.LBB0_3
# %bb.1:                                # %entry
	cmpl	$3, %edi
	je	.LBB0_3
# %bb.2:                                # %entry
	xorl	%eax, %eax
	testl	%edi, %edi
	jne	.LBB0_4
.LBB0_3:                                # %if.then5
	movl	$1, %eax
.LBB0_4:                                # %common.ret
	retq
.Lfunc_end0:
	.size	GetZFPType, .Lfunc_end0-GetZFPType
                                        # -- End function
	.globl	GetZFPField                     # -- Begin function GetZFPField
	.p2align	4, 0x90
	.type	GetZFPField,@function
GetZFPField:                            # @GetZFPField
	.cfi_startproc
# %bb.0:                                # %entry
	cmpl	$7, %edi
	je	.LBB1_3
# %bb.1:                                # %entry
	movl	%edi, %eax
	cmpl	$3, %edi
	je	.LBB1_3
# %bb.2:                                # %entry
	xorl	%edi, %edi
	testl	%eax, %eax
	jne	.LBB1_4
.LBB1_3:                                # %return.i
	movl	$1, %edi
.LBB1_4:                                # %GetZFPType.exit
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	zfp_field_1d@PLT
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	GetZFPField, .Lfunc_end1-GetZFPField
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
