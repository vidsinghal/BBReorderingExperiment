; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//371/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i64 @umfpack_zl_report_triplet(i64 %nz, ptr nocapture readonly %Ti, ptr nocapture readnone %Tz, ptr nocapture readonly %Control, i1 %0) local_unnamed_addr #0 {
entry:
  %1 = load double, ptr %Control, align 8
  %cmp5 = fcmp ord double %1, 0.000000e+00
  %cond = select i1 %cmp5, i1 %0, i1 false
  br i1 %cond, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret i64 0

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %Ti, align 8
  %call = tail call i32 (ptr, ...) %2(ptr null, i64 0, i64 0, i64 %nz)
  br label %common.ret
}

attributes #0 = { "target-cpu"="x86-64" }
