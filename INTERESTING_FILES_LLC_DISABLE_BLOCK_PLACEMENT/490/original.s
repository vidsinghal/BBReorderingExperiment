	.text
	.file	""
	.globl	ucp_datatype_iter_iov_mem_reg   # -- Begin function ucp_datatype_iter_iov_mem_reg
	.p2align	4, 0x90
	.type	ucp_datatype_iter_iov_mem_reg,@function
ucp_datatype_iter_iov_mem_reg:          # @ucp_datatype_iter_iov_mem_reg
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	callq	ucp_datatype_iter_iov_count@PLT
	testb	$1, %bpl
	je	.LBB0_2
# %bb.1:
	xorl	%eax, %eax
	jmp	.LBB0_4
.LBB0_2:                                # %if.end
	testq	%rbx, %rbx
	jne	.LBB0_5
# %bb.3:
	movb	$1, %al
.LBB0_4:                                # %common.ret
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB0_5:                                # %if.end4
	.cfi_def_cfa_offset 32
	movq	$0, (%rbx)
	xorl	%eax, %eax
	jmp	.LBB0_4
.Lfunc_end0:
	.size	ucp_datatype_iter_iov_mem_reg, .Lfunc_end0-ucp_datatype_iter_iov_mem_reg
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
