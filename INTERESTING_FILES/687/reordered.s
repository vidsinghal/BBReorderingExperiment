	.text
	.file	""
	.globl	cram_index_query                # -- Begin function cram_index_query
	.p2align	4, 0x90
	.type	cram_index_query,@function
cram_index_query:                       # @cram_index_query
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_1
# %bb.4:                                # %entry.split.us
	testb	$1, %sil
	je	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                # %for.cond.us.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_6:                                # %for.cond.us
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_6
.LBB0_1:                                # %entry.split
	testb	$1, %sil
	je	.LBB0_3
	.p2align	4, 0x90
.LBB0_2:                                # %for.cond.us1
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_3
.Lfunc_end0:
	.size	cram_index_query, .Lfunc_end0-cram_index_query
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
