; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//284/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define void @fxdiv_init_uint64_t(i64 %d, i64 %sub6) local_unnamed_addr #0 {
entry:
  %0 = urem i64 %sub6, %d
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void

while.cond:                                       ; preds = %while.cond, %entry
  %r1.0 = phi i64 [ %0, %entry ], [ %add, %while.cond ]
  %add = add nuw nsw i64 %r1.0, %d
  %cmp23.not = icmp eq i64 %r1.0, 0
  br i1 %cmp23.not, label %while.cond, label %while.end
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) "target-cpu"="x86-64" }