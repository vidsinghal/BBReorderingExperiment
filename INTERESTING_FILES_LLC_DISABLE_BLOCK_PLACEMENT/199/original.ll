; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//199/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define noundef i32 @slahqr_(i32 %0, i32 %1) local_unnamed_addr #0 {
entry:
  %cmp6 = icmp eq i32 %0, 0
  %cmp14.not.peel = icmp sgt i32 %0, %1
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp14.not.peel
  br i1 %or.cond, label %common.ret, label %for.cond.peel.next

for.cond.peel.next:                               ; preds = %entry
  %cmp14.not = icmp slt i32 %1, 0
  br label %for.cond

common.ret:                                       ; preds = %for.cond, %entry
  ret i32 0

for.cond:                                         ; preds = %for.cond.peel.next, %for.cond
  br i1 %cmp14.not, label %common.ret, label %for.cond, !llvm.loop !0
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
