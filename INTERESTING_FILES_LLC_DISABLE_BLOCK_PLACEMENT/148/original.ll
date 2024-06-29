; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//148/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define void @BLAS_cgemm_c_s(i32 %m, ptr nocapture writeonly %c, i1 %cmp57) local_unnamed_addr #0 {
entry:
  %cmp56 = icmp eq i32 %m, 0
  %or.cond = or i1 %cmp56, %cmp57
  br i1 %or.cond, label %common.ret, label %lor.lhs.false58

common.ret:                                       ; preds = %lor.lhs.false58, %entry
  ret void

lor.lhs.false58:                                  ; preds = %entry
  store float 0.000000e+00, ptr %c, align 4
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
