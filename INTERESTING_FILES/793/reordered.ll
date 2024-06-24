; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//793/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @scatter_partial_double_3(ptr nocapture writeonly %q, i64 %nx, i1 %cmp5.not) local_unnamed_addr #0 {
entry:
  %cmp2.not = icmp eq i64 %nx, 0
  %or.cond = or i1 %cmp2.not, %cmp5.not
  br i1 %or.cond, label %common.ret, label %for.body6

for.body6:                                        ; preds = %entry
  store double 1.000000e+00, ptr %q, align 8
  br label %common.ret

common.ret:                                       ; preds = %for.body6, %entry
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
