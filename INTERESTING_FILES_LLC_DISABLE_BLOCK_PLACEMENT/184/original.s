	.text
	.file	""
	.globl	OCSP_response_status_str        # -- Begin function OCSP_response_status_str
	.p2align	4, 0x90
	.type	OCSP_response_status_str,@function
OCSP_response_status_str:               # @OCSP_response_status_str
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB0_2
.LBB0_1:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_1
.LBB0_2:                                # %do_table2string.exit
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	OCSP_response_status_str, .Lfunc_end0-OCSP_response_status_str
                                        # -- End function
	.globl	do_table2string                 # -- Begin function do_table2string
	.p2align	4, 0x90
	.type	do_table2string,@function
do_table2string:                        # @do_table2string
# %bb.0:                                # %entry
	testq	%rdi, %rdi
	je	.LBB1_3
# %bb.1:                                # %for.cond.preheader
	xorl	%eax, %eax
	testq	%rdx, %rdx
	je	.LBB1_6
.LBB1_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$1, %rdx
	jne	.LBB1_2
	jmp	.LBB1_6
.LBB1_3:                                # %for.cond.us
	testq	%rdx, %rdx
	jne	.LBB1_5
# %bb.4:
	xorl	%eax, %eax
	retq
.LBB1_5:                                # %if.then
	movq	(%rsi), %rax
.LBB1_6:                                # %cleanup
	retq
.Lfunc_end1:
	.size	do_table2string, .Lfunc_end1-do_table2string
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
