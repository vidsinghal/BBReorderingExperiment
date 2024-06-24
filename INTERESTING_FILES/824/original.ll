; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//824/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(none)
define noundef i32 @v3p_netlib_setgpfa_(i64 %inc3, i64 %nn.1) local_unnamed_addr #0 {
entry:
  %rem.peel = srem i64 %nn.1, %inc3
  %cmp2.not.peel = icmp eq i64 %rem.peel, 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  br i1 %cmp2.not.peel, label %L10.peel.next, label %for.cond.backedge

for.cond.backedge:                                ; preds = %L10, %for.cond
  br label %for.cond

L10.peel.next:                                    ; preds = %for.cond
  %rem = srem i64 1, %inc3
  %cmp2.not = icmp eq i64 %rem, 0
  br label %L10

L10:                                              ; preds = %L10, %L10.peel.next
  br i1 %cmp2.not, label %L10, label %for.cond.backedge, !llvm.loop !0
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(none) "target-cpu"="corei7" }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
