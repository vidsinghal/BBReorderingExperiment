	.text
	.file	""
	.globl	spdk_json_write_begin           # -- Begin function spdk_json_write_begin
	.p2align	4, 0x90
	.type	spdk_json_write_begin,@function
spdk_json_write_begin:                  # @spdk_json_write_begin
# %bb.0:                                # %entry
	testb	$1, %dil
	jne	.LBB0_2
# %bb.1:                                # %if.end
	movq	$0, (%rsi)
	movb	$0, 25(%rsi)
.LBB0_2:                                # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	spdk_json_write_begin, .Lfunc_end0-spdk_json_write_begin
                                        # -- End function
	.globl	begin_value                     # -- Begin function begin_value
	.p2align	4, 0x90
	.type	begin_value,@function
begin_value:                            # @begin_value
# %bb.0:                                # %entry
	movw	$0, 24(%rdi)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	begin_value, .Lfunc_end1-begin_value
                                        # -- End function
	.globl	spdk_json_write_uint16          # -- Begin function spdk_json_write_uint16
	.p2align	4, 0x90
	.type	spdk_json_write_uint16,@function
spdk_json_write_uint16:                 # @spdk_json_write_uint16
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 32(%rsp)
	movw	$0, 24(%rdi)
	movq	%rsp, %rdi
	xorl	%eax, %eax
	callq	__snprintf_chk@PLT
	movl	0, %eax
	movq	%fs:40, %rax
	cmpq	32(%rsp), %rax
	jne	.LBB2_2
# %bb.1:                                # %SP_return
	xorl	%eax, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB2_2:                                # %CallStackCheckFailBlk
	.cfi_def_cfa_offset 48
	callq	__stack_chk_fail@PLT
.Lfunc_end2:
	.size	spdk_json_write_uint16, .Lfunc_end2-spdk_json_write_uint16
	.cfi_endproc
                                        # -- End function
	.globl	spdk_json_write_uint32          # -- Begin function spdk_json_write_uint32
	.p2align	4, 0x90
	.type	spdk_json_write_uint32,@function
spdk_json_write_uint32:                 # @spdk_json_write_uint32
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movq	%fs:40, %rax
	movq	%rax, 32(%rsp)
	movw	$0, 24(%rdi)
	movq	%rsp, %rdi
	xorl	%eax, %eax
	callq	__snprintf_chk@PLT
	movq	%fs:40, %rax
	cmpq	32(%rsp), %rax
	jne	.LBB3_2
# %bb.1:                                # %SP_return
	xorl	%eax, %eax
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB3_2:                                # %CallStackCheckFailBlk
	.cfi_def_cfa_offset 48
	callq	__stack_chk_fail@PLT
.Lfunc_end3:
	.size	spdk_json_write_uint32, .Lfunc_end3-spdk_json_write_uint32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
