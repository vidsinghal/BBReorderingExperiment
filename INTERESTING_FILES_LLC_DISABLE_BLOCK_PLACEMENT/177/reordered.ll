; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//177/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define noundef i32 @umfzi_kernel(i32 %0, i1 %tobool30.not, ptr nocapture writeonly %1) local_unnamed_addr #0 {
entry:
  %inc40 = or i32 %0, 1
  %cmp342 = icmp ult i32 %inc40, 128
  %cmp34 = select i1 %tobool30.not, i1 %cmp342, i1 false
  store i32 0, ptr %1, align 4
  br i1 %cmp34, label %for.body36.us.preheader, label %for.body36

for.body36.us:                                    ; preds = %for.body36.us.preheader, %for.body36.us
  br label %for.body36.us, !llvm.loop !0

for.body36.us.preheader:                          ; preds = %entry
  %idxprom38.us = zext nneg i32 %inc40 to i64
  %arrayidx39.us = getelementptr [128 x i32], ptr %1, i64 0, i64 %idxprom38.us
  store i32 0, ptr %arrayidx39.us, align 4
  br label %for.body36.us

for.body36:                                       ; preds = %entry
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
