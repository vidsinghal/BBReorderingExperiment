; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//30/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define noundef i32 @FLA_Norm1_tridiag_ops(ptr nocapture %buff_d, i1 %cmp) local_unnamed_addr #0 {
entry:
  br i1 %cmp, label %if.then, label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nm.0 = phi float [ %1, %if.then ], [ 0.000000e+00, %entry ]
  store float %nm.0, ptr %buff_d, align 4
  ret i32 0

if.then:                                          ; preds = %entry
  %0 = load float, ptr %buff_d, align 4
  %1 = tail call float @llvm.fabs.f32(float %0)
  br label %if.end
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
