; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//52/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double) local_unnamed_addr #0

declare double @pow() local_unnamed_addr

define noundef double @jacobian_dxdh_contact(double %call28, double %add29) local_unnamed_addr {
entry:
  %call281 = tail call double @pow()
  %call393 = load volatile double, ptr null, align 4294967296
  %0 = fcmp olt double %add29, 0.000000e+00
  br i1 %0, label %cdce.call, label %cdce.end, !prof !0

cdce.end2:                                        ; preds = %cdce.end, %cdce.call1
  ret double 0.000000e+00

cdce.end:                                         ; preds = %entry, %cdce.call
  %1 = fcmp olt double %call28, 0.000000e+00
  br i1 %1, label %cdce.call1, label %cdce.end2, !prof !0

cdce.call1:                                       ; preds = %cdce.end
  %call48 = tail call double @sqrt(double %call28)
  br label %cdce.end2

cdce.call:                                        ; preds = %entry
  %call41 = tail call double @sqrt(double %add29)
  br label %cdce.end
}

attributes #0 = { mustprogress nofree nounwind willreturn memory(write) }

!0 = !{!"branch_weights", i32 1, i32 2000}
