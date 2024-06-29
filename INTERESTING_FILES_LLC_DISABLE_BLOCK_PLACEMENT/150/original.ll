; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//150/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @gt_bitPackStringInt64_unit_test(i32 %call1) local_unnamed_addr {
entry:
  %and2 = and i32 %call1, 1
  %cmp251.not = icmp eq i32 %and2, 0
  br i1 %cmp251.not, label %cleanup160, label %for.body27

for.body27:                                       ; preds = %entry
  tail call void (...) @gt_log_log()
  br label %cleanup160

cleanup160:                                       ; preds = %for.body27, %entry
  ret i32 0
}

declare void @gt_log_log(...) local_unnamed_addr
