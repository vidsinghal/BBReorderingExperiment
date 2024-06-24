	.text
	.file	""
	.globl	ex_open_par_int                 # -- Begin function ex_open_par_int
	.p2align	4, 0x90
	.type	ex_open_par_int,@function
ex_open_par_int:                        # @ex_open_par_int
# %bb.0:                                # %entry
	movl	0, %eax
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.else
	movl	0, %eax
.LBB0_2:                                # %common.ret
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	ex_open_par_int, .Lfunc_end0-ex_open_par_int
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
