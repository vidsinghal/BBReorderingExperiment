; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//156/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse noreturn nosync nounwind memory(none)
define void @hypre_LDUSolve(double %xx.1) local_unnamed_addr #0 {
entry:
  br label %for.cond28

for.cond28:                                       ; preds = %for.end65, %entry
  %.pre = phi i32 [ 0, %entry ], [ %2, %for.end65 ]
  %cmp541 = icmp sgt i32 %.pre, 0
  br i1 %cmp541, label %for.body56, label %for.end65

for.body56:                                       ; preds = %for.cond28, %for.body56
  %xx.123 = phi double [ %0, %for.body56 ], [ %xx.1, %for.cond28 ]
  %j.12 = phi i32 [ %inc64, %for.body56 ], [ 0, %for.cond28 ]
  %0 = fadd double %xx.123, 0.000000e+00
  %inc64 = add nuw nsw i32 %j.12, 1
  %exitcond.not = icmp eq i32 %inc64, %.pre
  br i1 %exitcond.not, label %for.end65, label %for.body56

for.end65:                                        ; preds = %for.body56, %for.cond28
  %xx.12.lcssa = phi double [ %xx.1, %for.cond28 ], [ %0, %for.body56 ]
  %1 = bitcast double %xx.12.lcssa to i64
  %2 = trunc i64 %1 to i32
  br label %for.cond28
}

attributes #0 = { nofree norecurse noreturn nosync nounwind memory(none) }
