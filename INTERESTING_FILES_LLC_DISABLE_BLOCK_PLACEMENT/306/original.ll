; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//306/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write)
define void @umfdi_garbage_collection(ptr nocapture writeonly %Numeric, i32 %0, i1 %cmp16) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %0, 0
  %brmerge.not = select i1 %cmp, i1 %cmp16, i1 false
  br i1 %brmerge.not, label %for.body17.preheader, label %common.ret

for.body17.preheader:                             ; preds = %entry
  store i32 %0, ptr %Numeric, align 8
  br label %for.body17

common.ret:                                       ; preds = %entry
  ret void

for.body17:                                       ; preds = %for.body17.preheader, %for.body17
  br label %for.body17
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: write) }
