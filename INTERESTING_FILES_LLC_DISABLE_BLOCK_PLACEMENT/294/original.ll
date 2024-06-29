; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//294/original.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

declare i1 @bli_is_conj() local_unnamed_addr

define void @bli_chemv_unf_var1a(ptr nocapture %alpha, ptr nocapture %a, i1 %cmp9) local_unnamed_addr #1 {
entry:
  %call8 = load volatile ptr, ptr null, align 4294967296
  br i1 %cmp9, label %for.body.us.preheader, label %for.end

for.body.us.preheader:                            ; preds = %entry
  %.pre = load float, ptr %alpha, align 4
  %call26.us.peel = tail call i1 @bli_is_conj()
  %0 = load float, ptr %a, align 4
  %1 = load float, ptr %alpha, align 4
  %2 = tail call float @llvm.fmuladd.f32(float %1, float %.pre, float 0.000000e+00)
  store float %2, ptr %a, align 4
  store float %0, ptr %alpha, align 4
  tail call void %call8(i32 0, i32 0, i32 0, i64 0, ptr null, ptr null, i64 1, ptr null, i64 0, ptr null, ptr null, i64 0, ptr null)
  store float 0.000000e+00, ptr %alpha, align 4
  %call62.us.peel = tail call i1 @bli_is_conj()
  store float 0.000000e+00, ptr %alpha, align 4
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.body.us
  %call26.us = tail call i1 @bli_is_conj()
  %3 = load float, ptr %a, align 4
  %4 = load float, ptr %alpha, align 4
  %5 = tail call float @llvm.fmuladd.f32(float %4, float 0.000000e+00, float 0.000000e+00)
  store float %5, ptr %a, align 4
  store float %3, ptr %alpha, align 4
  tail call void %call8(i32 0, i32 0, i32 0, i64 0, ptr null, ptr null, i64 1, ptr null, i64 0, ptr null, ptr null, i64 0, ptr null)
  store float 0.000000e+00, ptr %alpha, align 4
  %call62.us = tail call i1 @bli_is_conj()
  store float 0.000000e+00, ptr %alpha, align 4
  br label %for.body.us, !llvm.loop !0

for.end:                                          ; preds = %entry
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "target-cpu"="x86-64" }

!0 = distinct !{!0, !1}
!1 = !{!"llvm.loop.peeled.count", i32 1}
