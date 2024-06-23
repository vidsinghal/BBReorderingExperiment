; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//480/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define i32 @FASTCOVER_checkParameters(i32 %f, i32 %0) local_unnamed_addr #0 {
entry:
  switch i32 %0, label %return [
    i32 6, label %if.end25
    i32 0, label %if.end25
  ]

return:                                           ; preds = %if.end25, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %f, %if.end25 ]
  ret i32 %retval.0

if.end25:                                         ; preds = %entry, %entry
  br label %return
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) }
