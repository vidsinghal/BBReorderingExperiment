; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//445/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define noundef i32 @_unur_set_params_burr(ptr nocapture writeonly %distr, ptr nocapture readnone %params, i32 %n_params, i1 %cond, ptr nocapture readnone %0, ptr nocapture readnone %arrayidx42, ptr nocapture writeonly %1) local_unnamed_addr #0 {
entry:
  br i1 %cond, label %sw.bb38, label %sw.default48

sw.bb59:                                          ; preds = %sw.default48
  store double 0.000000e+00, ptr %distr, align 8
  br label %common.ret

sw.default48:                                     ; preds = %entry
  switch i32 %n_params, label %sw.bb59 [
    i32 1, label %sw.bb70
    i32 0, label %common.ret
  ]

common.ret:                                       ; preds = %sw.bb70, %sw.bb59, %sw.default48, %sw.bb38
  ret i32 0

sw.bb38:                                          ; preds = %entry
  store double 1.000000e+00, ptr %distr, align 8
  br label %common.ret

sw.bb70:                                          ; preds = %sw.default48
  store double 0.000000e+00, ptr %1, align 8
  br label %common.ret
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) }
