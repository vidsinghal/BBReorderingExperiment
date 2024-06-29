; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//463/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @print_json_aux(i32 %0) local_unnamed_addr {
entry:
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb7
    i32 1, label %sw.bb6
    i32 5, label %sw.bb5
  ]

sw.bb5:                                           ; preds = %entry
  tail call void @print_json_true()
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store volatile i32 0, ptr null, align 4294967296
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  tail call void @print_json_null()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %entry
  ret void
}

declare void @print_json_true() local_unnamed_addr

declare void @print_json_null() local_unnamed_addr
