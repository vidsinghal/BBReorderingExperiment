; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//7/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree noreturn nounwind memory(write)
define noundef double @proj_inv_mdist() local_unnamed_addr #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %cdce.end, %entry
  %phi.0 = phi double [ 0.000000e+00, %entry ], [ %sub10, %cdce.end ]
  %0 = tail call double @llvm.fabs.f64(double %phi.0)
  %1 = fcmp oeq double %0, 0x7FF0000000000000
  br i1 %1, label %cdce.call, label %cdce.end, !prof !0

cdce.call:                                        ; preds = %while.cond
  %call = tail call double @sin(double %phi.0)
  br label %cdce.end

cdce.end:                                         ; preds = %while.cond, %cdce.call
  %sub10 = fadd double %phi.0, 1.000000e+00
  br label %while.cond
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sin(double) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

attributes #0 = { nofree noreturn nounwind memory(write) }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!0 = !{!"branch_weights", i32 1, i32 2000}
