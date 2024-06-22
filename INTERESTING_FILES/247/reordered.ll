; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//247/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noreturn
define void @ht_visit(ptr nocapture readonly %visitor, ptr nocapture readonly %0) local_unnamed_addr #0 {
entry:
  %1 = load ptr, ptr %0, align 8
  %tobool.not.peel = icmp eq ptr %1, null
  br i1 %tobool.not.peel, label %for.cond.backedge.peel, label %land.lhs.true.peel

for.cond.backedge:                                ; preds = %for.cond, %land.lhs.true
  br label %for.cond, !llvm.loop !0

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.backedge.peel
  %2 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.cond.backedge, label %land.lhs.true

land.lhs.true.peel:                               ; preds = %entry
  tail call void %visitor(ptr null, ptr null)
  br label %for.cond.backedge.peel

for.cond.backedge.peel:                           ; preds = %land.lhs.true.peel, %entry
  %arrayidx = getelementptr i8, ptr %0, i64 8
  br label %for.cond

land.lhs.true:                                    ; preds = %for.cond
  tail call void %visitor(ptr null, ptr null)
  br label %for.cond.backedge
}

attributes #0 = { noreturn }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
