	.text
	.file	""
	.globl	print_json_aux                  # -- Begin function print_json_aux
	.p2align	4, 0x90
	.type	print_json_aux,@function
print_json_aux:                         # @print_json_aux
	.cfi_startproc
# %bb.0:                                # %entry
	testl	%edi, %edi
	je	print_json_null@PLT             # TAILCALL
# %bb.1:                                # %entry
	cmpl	$1, %edi
	je	.LBB0_4
# %bb.2:                                # %entry
	cmpl	$5, %edi
	je	print_json_true@PLT             # TAILCALL
# %bb.3:                                # %sw.epilog
	retq
.LBB0_4:                                # %sw.bb6
	movl	$0, 0
	retq
.Lfunc_end0:
	.size	print_json_aux, .Lfunc_end0-print_json_aux
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
