; ModuleID = '/g/g91/singhal2/BBReorderingExperiment/INTERESTING_FILES//47/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define noundef i64 @cholmod_postorder(ptr nocapture readnone %Weight, ptr nocapture readnone %Common, ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, i1 %cmp32, ptr nocapture writeonly %3) local_unnamed_addr #0 {
entry:
  %cmp27 = icmp sgt i32 %1, 0
  %brmerge.not = select i1 %cmp27, i1 %cmp32, i1 false
  br i1 %brmerge.not, label %for.cond.preheader, label %common.ret

common.ret:                                       ; preds = %entry
  ret i64 0

for.cond.preheader:                               ; preds = %entry
  store i32 0, ptr %3, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.cond
  br label %for.cond
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }
