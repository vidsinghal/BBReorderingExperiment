; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//122/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define void @WebPMultARGBRow_C(ptr nocapture writeonly %ptr, i32 %width, i32 %x.0, i64 %idxprom, ptr nocapture readnone %arrayidx, i32 %0, i1 %cmp1) local_unnamed_addr #0 {
entry:
  %cmp2 = icmp sgt i32 %width, 0
  %brmerge.not = select i1 %cmp2, i1 %cmp1, i1 false
  br i1 %brmerge.not, label %for.body.lr.ph.split.us, label %for.end

for.body.lr.ph.split.us:                          ; preds = %entry
  store i32 0, ptr %ptr, align 4
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.lr.ph.split.us, %for.body.us
  br label %for.body.us

for.end:                                          ; preds = %entry
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }
