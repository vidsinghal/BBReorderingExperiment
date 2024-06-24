; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//676/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(write, inaccessiblemem: none)
define noundef i32 @hwloc_linux_set_tid_cpubind(i32 %call, i64 %0, i64 %div194) local_unnamed_addr #0 {
entry:
  %arrayidx = getelementptr i64, ptr null, i64 %div194
  %conv154 = zext i32 %call to i64
  %cmp17 = icmp ult i64 %conv154, %0
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  br i1 %cmp17, label %cond.true, label %for.cond.backedge

cond.true:                                        ; preds = %for.cond
  store i64 poison, ptr %arrayidx, align 8
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %cond.true, %for.cond
  br label %for.cond, !llvm.loop !0
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(write, inaccessiblemem: none) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
