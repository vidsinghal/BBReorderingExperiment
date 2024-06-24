; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//672/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none)
define void @qnnp_indirection_init_dwconv2d(i1 %cmp.not, i1 %cmp26.not, i64 %mul54) local_unnamed_addr #0 {
entry:
  %or.cond = select i1 %cmp.not, i1 %cmp26.not, i1 false
  br i1 %or.cond, label %common.ret, label %for.body29

for.body29:                                       ; preds = %entry
  %arrayidx = getelementptr ptr, ptr null, i64 %mul54
  store ptr poison, ptr %arrayidx, align 8
  br label %common.ret

common.ret:                                       ; preds = %for.body29, %entry
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) }
