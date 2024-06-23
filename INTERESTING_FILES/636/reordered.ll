; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES//636/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @BLAS_chemm_c_s_x(i32 %n, i32 %ldb, ptr nocapture writeonly %c) local_unnamed_addr #0 {
entry:
  %cmp10 = icmp sgt i32 %n, 0
  %cmp12 = icmp slt i32 %ldb, 0
  %or.cond = or i1 %cmp10, %cmp12
  br i1 %or.cond, label %common.ret, label %if.end14

if.end14:                                         ; preds = %entry
  store float 0.000000e+00, ptr %c, align 4
  br label %common.ret

common.ret:                                       ; preds = %if.end14, %entry
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "target-cpu"="x86-64" }
