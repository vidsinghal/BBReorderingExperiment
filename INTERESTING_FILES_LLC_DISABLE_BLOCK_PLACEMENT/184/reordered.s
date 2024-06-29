	.text
	.file	""
	.globl	OCSP_response_status_str        # -- Begin function OCSP_response_status_str
	.p2align	4, 0x90
	.type	OCSP_response_status_str,@function
OCSP_response_status_str:               # @OCSP_response_status_str
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	jne	.LBB0_2
# %bb.1:                                # %do_table2string.exit
	xorl	%eax, %eax
	retq
.LBB0_2:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
.Lfunc_end0:
	.size	OCSP_response_status_str, .Lfunc_end0-OCSP_response_status_str
                                        # -- End function
	.globl	do_table2string                 # -- Begin function do_table2string
	.p2align	4, 0x90
	.type	do_table2string,@function
do_table2string:                        # @do_table2string
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	jne	.LBB1_5
# %bb.1:                                # %for.cond.us
	testq	%rdx, %rdx
	je	.LBB1_4
# %bb.2:                                # %if.then
	movq	(%rsi), %rax
.LBB1_3:                                # %cleanup
	retq
.LBB1_4:
	xorl	%eax, %eax
	retq
.LBB1_5:                                # %for.cond.preheader
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB1_3
.LBB1_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$1, %rdx
	jne	.LBB1_6
	jmp	.LBB1_3
.Lfunc_end1:
	.size	do_table2string, .Lfunc_end1-do_table2string
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
