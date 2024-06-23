	.text
	.file	""
	.globl	jcmd_jwk_eql                    # -- Begin function jcmd_jwk_eql
	.p2align	4, 0x90
	.type	jcmd_jwk_eql,@function
jcmd_jwk_eql:                           # @jcmd_jwk_eql
	.cfi_startproc
# %bb.0:                                # %entry
	cmpb	$0, 0
	je	.LBB0_2
# %bb.1:                                # %if.end
	pushq	%rax
	.cfi_def_cfa_offset 16
	xorl	%eax, %eax
	callq	fprintf@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
.LBB0_2:                                # %cleanup18
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	jcmd_jwk_eql, .Lfunc_end0-jcmd_jwk_eql
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
