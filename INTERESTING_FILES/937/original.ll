; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//937/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define noundef i32 @hypre_MGRDestroy(ptr nocapture writeonly %data, i32 %0) local_unnamed_addr #0 {
entry:
  %cmp661 = icmp sgt i32 %0, 1
  br i1 %cmp661, label %for.body67.lr.ph, label %for.end76

for.body67.lr.ph:                                 ; preds = %entry
  store ptr null, ptr %data, align 8
  %cmp66.not = icmp eq i32 %0, 2
  br i1 %cmp66.not, label %for.end76, label %for.body67

for.body67:                                       ; preds = %for.body67.lr.ph, %for.body67
  br label %for.body67

for.end76:                                        ; preds = %for.body67.lr.ph, %entry
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }
