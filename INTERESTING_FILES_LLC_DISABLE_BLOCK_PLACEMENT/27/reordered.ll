; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//27/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(none)
define void @duckdb_shell_sqlite3VXPrintf(i1 %cmp5.not) local_unnamed_addr #0 {
entry:
  br i1 %cmp5.not, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %entry, %sw.bb
  br label %sw.bb

do.body:                                          ; preds = %entry, %do.body
  br label %do.body
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(none) }
