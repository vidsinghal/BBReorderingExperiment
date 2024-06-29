; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #0

declare i1 @bli_is_conj()

define void @bli_chemv_unf_var1a(ptr %alpha, ptr %a, i1 %cmp9) #1 {
entry:
  %call8 = load volatile ptr, ptr null, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load float, ptr %alpha, align 4
  %call26 = call i1 @bli_is_conj()
  %1 = load float, ptr %a, align 4
  %2 = load float, ptr %alpha, align 4
  %3 = call float @llvm.fmuladd.f32(float %2, float %0, float 0.000000e+00)
  store float %3, ptr %a, align 4
  store float %1, ptr %alpha, align 4
  call void %call8(i32 0, i32 0, i32 0, i64 0, ptr null, ptr null, i64 1, ptr null, i64 0, ptr null, ptr null, i64 0, ptr null)
  store float 0.000000e+00, ptr %alpha, align 4
  %call62 = call i1 @bli_is_conj()
  store float 0.000000e+00, ptr %alpha, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { "target-cpu"="x86-64" }
