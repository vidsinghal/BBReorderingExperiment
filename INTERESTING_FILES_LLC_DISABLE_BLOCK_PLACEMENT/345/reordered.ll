; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//345/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define range(i64 0, 2) i64 @hypre_multmod(i64 %a) local_unnamed_addr #0 {
entry:
  %tobool.not1 = icmp eq i64 %a, 0
  br i1 %tobool.not1, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %entry
  %res.0.lcssa = phi i64 [ 0, %entry ], [ %b.addr.02, %while.body ]
  ret i64 %res.0.lcssa

while.body:                                       ; preds = %entry, %while.body
  %b.addr.02 = phi i64 [ %shr, %while.body ], [ %a, %entry ]
  %shr = ashr i64 %b.addr.02, 1
  %tobool.not = icmp ult i64 %b.addr.02, 2
  br i1 %tobool.not, label %while.end, label %while.body
}

attributes #0 = { nofree norecurse nosync nounwind memory(none) }
