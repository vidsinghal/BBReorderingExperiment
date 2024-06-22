; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//282/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define double @zlanhe_(i32 %0, i1 %cmp, double %cond) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %if.end280, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp5.not.peel = icmp slt i32 %0, 0
  br i1 %cmp5.not.peel, label %if.end280, label %for.cond.peel.next

for.cond.peel.next:                               ; preds = %for.cond.preheader
  %cmp5.not = icmp eq i32 %0, 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.peel.next, %for.cond
  br i1 %cmp5.not, label %if.end280, label %for.cond, !llvm.loop !0

if.end280:                                        ; preds = %for.cond, %for.cond.preheader, %entry
  %value.1 = phi double [ 0.000000e+00, %entry ], [ %cond, %for.cond.preheader ], [ %cond, %for.cond ]
  ret double %value.1
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
