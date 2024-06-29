; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//411/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write)
define void @BLAS_zsymv2_z_c_x(i32 %n, i1 %cmp, i1 %cmp3) local_unnamed_addr #0 {
entry:
  switch i32 %n, label %sw.bb [
    i32 0, label %common.ret
    i32 212, label %common.ret
    i32 213, label %common.ret
  ]

sw.bb:                                            ; preds = %entry
  br i1 %cmp, label %common.ret, label %if.end

common.ret:                                       ; preds = %if.end, %sw.bb, %entry, %entry, %entry
  ret void

if.end:                                           ; preds = %sw.bb
  tail call void @llvm.assume(i1 %cmp3)
  br label %common.ret
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
