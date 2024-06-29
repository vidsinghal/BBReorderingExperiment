; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//317/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @cggrqf_(ptr nocapture writeonly %work, ptr nocapture writeonly %lwork, i32 %0, i1 %cmp34) local_unnamed_addr #0 {
entry:
  store float 0.000000e+00, ptr %lwork, align 4
  %cmp99 = icmp sgt i32 %0, 0
  %or.cond = or i1 %cmp99, %cmp34
  br i1 %or.cond, label %if.end, label %if.then101

if.end:                                           ; preds = %if.then101, %entry
  ret i32 0

if.then101:                                       ; preds = %entry
  store i32 0, ptr %work, align 4
  br label %if.end
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
