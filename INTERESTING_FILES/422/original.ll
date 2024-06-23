; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//422/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef i32 @umfpack_di_report_matrix(ptr nocapture readonly %Control, double %0, i32 %1) local_unnamed_addr {
entry:
  %cmp2 = fcmp ord double %0, 0.000000e+00
  %2 = icmp slt i32 %1, 0
  %cond = select i1 %cmp2, i1 %2, i1 false
  br i1 %cond, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret i32 0

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %Control, align 8
  %call = tail call i32 (ptr, ...) %3(ptr null, ptr null, i32 0, i32 0)
  br label %common.ret
}
