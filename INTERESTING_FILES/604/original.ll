; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//604/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @BLAS_zhbmv_z_c_x(ptr nocapture writeonly %alpha, double %.pre, i1 %cmp3) local_unnamed_addr #0 {
entry:
  %cmp12 = fcmp une double %.pre, 0.000000e+00
  %brmerge.not = select i1 %cmp12, i1 %cmp3, i1 false
  br i1 %brmerge.not, label %common.ret, label %if.end11

common.ret:                                       ; preds = %if.end11, %entry
  ret void

if.end11:                                         ; preds = %entry
  store double 0.000000e+00, ptr %alpha, align 8
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
