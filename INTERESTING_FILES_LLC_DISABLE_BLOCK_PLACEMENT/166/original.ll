; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//166/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnbr_t = type { i32, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none)
define void @libmetis__ComputeKWayVolGains(i1 %cmp59, i64 %idx.ext16) local_unnamed_addr #0 {
entry:
  br i1 %cmp59, label %for.body61, label %common.ret

common.ret:                                       ; preds = %for.body61, %entry
  ret void

for.body61:                                       ; preds = %entry
  %gv74 = getelementptr %struct.vnbr_t, ptr null, i64 %idx.ext16, i32 2
  store i32 poison, ptr %gv74, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) }
