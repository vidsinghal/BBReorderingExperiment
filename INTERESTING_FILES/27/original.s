	.text
	.file	""
	.globl	duckdb_shell_sqlite3VXPrintf    # -- Begin function duckdb_shell_sqlite3VXPrintf
	.p2align	4, 0x90
	.type	duckdb_shell_sqlite3VXPrintf,@function
duckdb_shell_sqlite3VXPrintf:           # @duckdb_shell_sqlite3VXPrintf
# %bb.0:                                # %entry
	testb	$1, %dil
	je	.LBB0_1
	.p2align	4, 0x90
.LBB0_2:                                # %sw.bb
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_1:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	jmp	.LBB0_1
.Lfunc_end0:
	.size	duckdb_shell_sqlite3VXPrintf, .Lfunc_end0-duckdb_shell_sqlite3VXPrintf
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
