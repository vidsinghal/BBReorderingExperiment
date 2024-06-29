; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//187/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read)
define void @format_message(ptr nocapture readonly %cinfo) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr %cinfo, align 8
  %1 = load i8, ptr %cinfo, align 1
  %2 = trunc i32 %0 to i8
  switch i8 %1, label %while.cond [
    i8 37, label %common.ret
    i8 0, label %common.ret
  ]

while.cond:                                       ; preds = %entry, %while.cond
  switch i8 %2, label %while.cond [
    i8 37, label %common.ret
    i8 0, label %common.ret
  ], !llvm.loop !0

common.ret:                                       ; preds = %while.cond, %while.cond, %entry, %entry
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
