; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//31/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(argmem: readwrite)
define void @vq_nbest_sign(i32 %entries, ptr nocapture writeonly %E, ptr nocapture %best_dist, i64 %idxprom34) local_unnamed_addr #0 {
entry:
  %0 = zext i32 %entries to i64
  %vla = alloca float, i64 %0, align 16
  store float 0.000000e+00, ptr %vla, align 16
  br label %for.cond21

for.cond44.preheader:                             ; preds = %for.cond21
  %arrayidx353 = getelementptr float, ptr %vla, i64 %idxprom34
  %1 = load float, ptr %arrayidx353, align 4
  store float %1, ptr %E, align 4
  %2 = getelementptr float, ptr %best_dist, i64 %idxprom34
  %arrayidx56.peel = getelementptr i8, ptr %2, i64 -4
  %3 = load float, ptr %arrayidx56.peel, align 4
  store float %3, ptr %2, align 4
  %arrayidx56.phi.trans.insert = getelementptr i8, ptr %best_dist, i64 -4
  %.pre = load float, ptr %arrayidx56.phi.trans.insert, align 4
  store float %.pre, ptr %best_dist, align 4
  br label %for.cond44

for.cond21:                                       ; preds = %for.cond21, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc79, %for.cond21 ]
  %cmp36 = icmp slt i32 %i.01, %entries
  %inc79 = add i32 %i.01, 1
  br i1 %cmp36, label %for.cond44.preheader, label %for.cond21

for.cond44:                                       ; preds = %for.cond44.preheader, %for.cond44
  br label %for.cond44, !llvm.loop !0
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(argmem: readwrite) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
