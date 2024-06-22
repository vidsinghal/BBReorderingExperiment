; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @duckdb_shell_sqlite3VXPrintf(i1 %cmp5.not) {
entry:
  br i1 %cmp5.not, label %sw.bb, label %do.body

do.body:                                          ; preds = %do.body, %entry
  br label %do.body

sw.bb:                                            ; preds = %sw.bb, %entry
  br label %sw.bb
}
