	.text
	.file	""
	.globl	grib_oarray_new                 # -- Begin function grib_oarray_new
	.p2align	4, 0x90
	.type	grib_oarray_new,@function
grib_oarray_new:                        # @grib_oarray_new
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testb	$1, %sil
	je	.LBB0_2
# %bb.1:                                # %if.then3
	xorl	%ebx, %ebx
	xorl	%eax, %eax
	callq	grib_context_log@PLT
.LBB0_2:                                # %cleanup
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	grib_oarray_new, .Lfunc_end0-grib_oarray_new
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
