; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define i32 @FLA_Norm1_tridiag_ops(ptr %buff_d, i1 %cmp) {
entry:
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load float, ptr %buff_d, align 4
  %1 = call float @llvm.fabs.f32(float %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %nm.0 = phi float [ %1, %if.then ], [ 0.000000e+00, %entry ]
  store float %nm.0, ptr %buff_d, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #0

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
