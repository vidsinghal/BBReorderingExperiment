; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//313/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define noundef i32 @ftl_mngt_p2l_ckpt_restore(ptr nocapture readonly %band, i64 %seq_id, ptr nocapture readonly %0) local_unnamed_addr #0 {
entry:
  %cmp91.not = icmp eq i64 %seq_id, 0
  br i1 %cmp91.not, label %common.ret, label %for.body.lr.ph

common.ret:                                       ; preds = %for.body, %for.body.lr.ph, %entry
  ret i32 0

for.body.peel.next:                               ; preds = %for.body.lr.ph
  %.pre = load i64, ptr %band, align 8
  %cmp11.not.not = icmp eq i64 %.pre, 0
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.peel.next
  br i1 %cmp11.not.not, label %common.ret, label %for.body, !llvm.loop !0

for.body.lr.ph:                                   ; preds = %entry
  %1 = load i64, ptr %0, align 8
  %cmp11.not.peel = icmp ne i64 %1, 0
  %cmp9.peel = icmp eq i64 %seq_id, -1
  %or.cond.peel = and i1 %cmp11.not.peel, %cmp9.peel
  br i1 %or.cond.peel, label %for.body.peel.next, label %common.ret
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
