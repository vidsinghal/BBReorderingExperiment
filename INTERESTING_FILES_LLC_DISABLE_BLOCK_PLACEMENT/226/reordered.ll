; ModuleID = '/local/scratch/a/singhav/BBReorderingExperiment/INTERESTING_FILES_LLC_DISABLE_BLOCK_PLACEMENT//226/reordered.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @bli_caxpyf_zen_int_4(ptr nocapture readonly %alpha, ptr nocapture readonly %a, ptr nocapture readonly %x, ptr nocapture %y, i1 %cmp, ptr nocapture readonly %chi0.sroa.2.0..sroa_idx) local_unnamed_addr {
entry:
  br i1 %cmp, label %common.ret, label %if.end4

if.end4:                                          ; preds = %entry
  %call41 = tail call i1 @bli_is_noconj()
  %chi0.sroa.0.0.copyload = load float, ptr %x, align 4
  %chi0.sroa.2.0.copyload = load float, ptr %alpha, align 4
  %y0c360.sroa.0.0.copyload = load float, ptr %y, align 4
  %a0c361.sroa.0.0.copyload = load float, ptr %a, align 4
  %a0c361.sroa.2.0.copyload = load float, ptr %chi0.sroa.2.0..sroa_idx, align 4
  %mul374 = fmul float %chi0.sroa.2.0.copyload, %a0c361.sroa.2.0.copyload
  %0 = tail call float @llvm.fmuladd.f32(float %chi0.sroa.0.0.copyload, float %a0c361.sroa.0.0.copyload, float %mul374)
  %add379 = fadd float %y0c360.sroa.0.0.copyload, %0
  store float %add379, ptr %y, align 4
  %y0c360.sroa.4.0..sroa_idx2 = getelementptr i8, ptr %y, i64 4
  store float 0.000000e+00, ptr %y0c360.sroa.4.0..sroa_idx2, align 4
  br label %common.ret

common.ret:                                       ; preds = %if.end4, %entry
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

declare i1 @bli_is_noconj() local_unnamed_addr

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
