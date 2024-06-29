; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//52/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define noundef double @jacobian_dxdh_no_contact(double %call23) local_unnamed_addr {
entry:
  %0 = fcmp olt double %call23, 0.000000e+00
  br i1 %0, label %cdce.call1, label %cdce.end, !prof !0

cdce.call1:                                       ; preds = %entry
  %call25 = tail call double @sqrt(double %call23)
  %call3033 = tail call double @pow()
  %call4554 = load volatile double, ptr null, align 4294967296
  %call5675 = load volatile double, ptr null, align 4294967296
  %call58 = tail call double @sqrt(double %call23)
  br label %cdce.end2

cdce.end:                                         ; preds = %entry
  %call303 = tail call double @pow()
  %call455 = load volatile double, ptr null, align 4294967296
  %call567 = load volatile double, ptr null, align 4294967296
  br label %cdce.end2

cdce.end2:                                        ; preds = %cdce.end, %cdce.call1
  ret double 0.000000e+00
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double) local_unnamed_addr #0

declare double @pow() local_unnamed_addr

attributes #0 = { mustprogress nofree nounwind willreturn memory(write) }

!0 = !{!"branch_weights", i32 1, i32 2000}
