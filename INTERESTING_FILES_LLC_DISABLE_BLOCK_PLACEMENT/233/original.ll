; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//233/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @BLAS_zge_sum_mv_c_c(i32 %m, ptr nocapture writeonly %y, i1 %cmp1) local_unnamed_addr #0 {
entry:
  %cmp = icmp eq i32 %m, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %entry
  ret void

if.end:                                           ; preds = %entry
  store double 0.000000e+00, ptr %y, align 8
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
