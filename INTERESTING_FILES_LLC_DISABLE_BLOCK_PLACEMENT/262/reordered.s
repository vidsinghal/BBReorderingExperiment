	.text
	.file	""
	.globl	Spliceends_trim_qstart_nosplice # -- Begin function Spliceends_trim_qstart_nosplice
	.p2align	4, 0x90
	.type	Spliceends_trim_qstart_nosplice,@function
Spliceends_trim_qstart_nosplice:        # @Spliceends_trim_qstart_nosplice
# %bb.0:                                # %entry
	xorl	%ecx, %ecx
	xorl	%eax, %eax
.LBB0_1:                                # %for.cond.outer
                                        # =>This Inner Loop Header: Depth=1
                                        # kill: def $eax killed $eax killed $rax
	testl	%eax, %eax
	movl	%ecx, %eax
	js	.LBB0_3
# %bb.2:                                # %for.cond.outer.loopexit
                                        #   in Loop: Header=BB0_1 Depth=1
	leal	1(%rax), %ecx
	jmp	.LBB0_1
.LBB0_3:                                # %if.then17.lr.ph
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	$0, (%rdi)
	leal	1(%rax), %ecx
	jmp	.LBB0_1
.Lfunc_end0:
	.size	Spliceends_trim_qstart_nosplice, .Lfunc_end0-Spliceends_trim_qstart_nosplice
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
