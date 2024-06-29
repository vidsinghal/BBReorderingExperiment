; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//408/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define noundef i32 @nn_dns_check_hostname(ptr nocapture readonly %name, ptr nocapture readonly %0, i1 %cmp43) local_unnamed_addr #0 {
entry:
  %1 = load i8, ptr %name, align 1
  %cmp11.peel = icmp ne i8 %1, 1
  %cmp20.peel = icmp sgt i8 %1, 0
  %or.cond.peel = or i1 %cmp20.peel, %cmp43
  %or.cond1.peel = select i1 %cmp11.peel, i1 %or.cond.peel, i1 false
  br i1 %or.cond1.peel, label %while.body.peel.next, label %common.ret

while.body:                                       ; preds = %while.body, %while.body.peel.next
  br i1 %or.cond1, label %while.body, label %common.ret, !llvm.loop !0

while.body.peel.next:                             ; preds = %entry
  %.pre = load i8, ptr %0, align 1
  %cmp11 = icmp ne i8 %.pre, 1
  %cmp20 = icmp sgt i8 %.pre, 0
  %or.cond = or i1 %cmp20, %cmp43
  %or.cond1 = select i1 %cmp11, i1 %or.cond, i1 false
  br label %while.body

common.ret:                                       ; preds = %while.body, %entry
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
