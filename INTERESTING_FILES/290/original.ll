; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//290/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @sppsv_(ptr nocapture writeonly %info, i32 %0, i32 %1) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %0, 0
  %cmp5 = icmp slt i32 %1, 0
  %or.cond = select i1 %cmp, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.then6, label %if.end13

if.then6:                                         ; preds = %entry
  store i32 0, ptr %info, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
