	.text
	.file	""
	.globl	write_frame_header              # -- Begin function write_frame_header
	.p2align	4, 0x90
	.type	write_frame_header,@function
write_frame_header:                     # @write_frame_header
# %bb.0:                                # %entry
	movl	$16, %eax
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	(%rax), %rcx
	shlq	$3, %rcx
	cmpq	$-96, %rcx
	jne	.LBB0_3
# %bb.2:                                # %if.then.i
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, 40
.LBB0_3:                                # %emit_dqt.exit
                                        #   in Loop: Header=BB0_1 Depth=1
	addq	$96, %rax
	jmp	.LBB0_1
.Lfunc_end0:
	.size	write_frame_header, .Lfunc_end0-write_frame_header
                                        # -- End function
	.globl	emit_dqt                        # -- Begin function emit_dqt
	.p2align	4, 0x90
	.type	emit_dqt,@function
emit_dqt:                               # @emit_dqt
# %bb.0:                                # %entry
	movslq	%edi, %rax
	shlq	$3, %rax
	cmpq	$-96, %rax
	jne	.LBB1_2
# %bb.1:                                # %if.then
	movl	$0, 40
.LBB1_2:                                # %if.end
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	emit_dqt, .Lfunc_end1-emit_dqt
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
