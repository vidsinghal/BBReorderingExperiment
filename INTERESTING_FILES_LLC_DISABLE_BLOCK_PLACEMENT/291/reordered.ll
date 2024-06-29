; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//291/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @cunbdb1_(ptr nocapture writeonly %m, i32 %0, i1 %cmp14) local_unnamed_addr #0 {
entry:
  %cmp12 = icmp sgt i32 %0, 1
  %or.cond = or i1 %cmp12, %cmp14
  br i1 %or.cond, label %if.then16, label %common.ret

if.then16:                                        ; preds = %entry
  store i32 0, ptr %m, align 4
  br label %common.ret

common.ret:                                       ; preds = %if.then16, %entry
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
