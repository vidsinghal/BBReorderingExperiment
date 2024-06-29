; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//518/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define noundef i32 @umfdi_local_search(ptr nocapture writeonly %Work, i32 %0, i1 %cmp26, double %1) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %0, 0
  %or.cond = select i1 %cmp, i1 %cmp26, i1 false
  br i1 %or.cond, label %if.then, label %for.cond.preheader

for.end:                                          ; preds = %for.cond.preheader
  store double %1, ptr %Work, align 8
  ret i32 0

for.cond.preheader:                               ; preds = %entry, %if.then
  br i1 %cmp26, label %for.cond, label %for.end

for.cond:                                         ; preds = %for.cond.preheader, %for.cond
  br label %for.cond

if.then:                                          ; preds = %entry
  store i32 0, ptr %Work, align 4
  br label %for.cond.preheader
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }
