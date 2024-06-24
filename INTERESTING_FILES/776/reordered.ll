; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//776/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
define noundef double @vtklibproj_pj_qsfn(double %sinphi, i1 %cmp) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %if.then, label %cleanup

cdce.call:                                        ; preds = %if.then
  %call = tail call double @log(double %sinphi)
  br label %cleanup

if.then:                                          ; preds = %entry
  %0 = fcmp ugt double %sinphi, 0.000000e+00
  br i1 %0, label %cleanup, label %cdce.call, !prof !0

cleanup:                                          ; preds = %cdce.call, %if.then, %entry
  %retval.0 = phi double [ 1.000000e+00, %entry ], [ 0.000000e+00, %if.then ], [ 0.000000e+00, %cdce.call ]
  ret double %retval.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double) local_unnamed_addr #0

attributes #0 = { mustprogress nofree nounwind willreturn memory(write) }

!0 = !{!"branch_weights", i32 2000, i32 1}
