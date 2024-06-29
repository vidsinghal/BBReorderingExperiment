; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//109/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @bli_dscalv_zen2_ref(i64 %n, ptr nocapture writeonly %x, i1 %call) local_unnamed_addr #0 {
entry:
  %cmp14 = icmp sgt i64 %n, 0
  %or.cond = and i1 %cmp14, %call
  br i1 %or.cond, label %omp.inner.for.body, label %common.ret

omp.inner.for.body:                               ; preds = %entry
  store double 0.000000e+00, ptr %x, align 8
  br label %common.ret

common.ret:                                       ; preds = %omp.inner.for.body, %entry
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
