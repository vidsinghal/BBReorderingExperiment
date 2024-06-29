; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//415/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define void @ComputeIncrementsForPlanar(i32 %Format, ptr nocapture writeonly %ComponentPointerIncrements) local_unnamed_addr #0 {
entry:
  %and = and i32 %Format, 7
  switch i32 %and, label %for.body.us.preheader [
    i32 0, label %for.end
    i32 1, label %for.body
  ]

for.body.us.preheader:                            ; preds = %entry
  store i32 0, ptr %ComponentPointerIncrements, align 4
  %arrayidx.us = getelementptr i8, ptr %ComponentPointerIncrements, i64 4
  store i32 0, ptr %arrayidx.us, align 4
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.body.us
  br label %for.body.us, !llvm.loop !0

for.body:                                         ; preds = %entry
  store i32 0, ptr %ComponentPointerIncrements, align 4
  br label %for.end

for.end:                                          ; preds = %entry, %for.body
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
