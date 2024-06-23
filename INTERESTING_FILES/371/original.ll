; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//371/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i64 @umfpack_zl_report_triplet(ptr nocapture readonly %Control, double %0, i1 %1) local_unnamed_addr {
entry:
  %cmp5 = fcmp ord double %0, 0.000000e+00
  %cond = select i1 %cmp5, i1 %1, i1 false
  br i1 %cond, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret i64 0

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %Control, align 8
  %call = tail call i32 (ptr, ...) %2(ptr null, i64 0, i64 0, i64 0)
  br label %common.ret
}
