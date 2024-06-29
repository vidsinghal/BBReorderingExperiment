; ModuleID = 'reduced.bc'
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

define void @xnn_f32_igemm_minmax_ukernel_8x16__avx512f_broadcast(ptr %a, ptr %0, ptr %1, ptr %2, ptr %3, i1 %cmp217) {
entry:
  %call = call <16 x float> @_mm512_load_ps()
  %4 = load ptr, ptr %0, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = load ptr, ptr %a, align 8
  %9 = load float, ptr %4, align 4
  %call170 = call <16 x float> @_mm512_set1_ps(float %9)
  %10 = load float, ptr %5, align 4
  %call172 = call <16 x float> @_mm512_set1_ps(float %10)
  %11 = load float, ptr %a, align 4
  %call174 = call <16 x float> @_mm512_set1_ps(float %11)
  %12 = load float, ptr %6, align 4
  %call176 = call <16 x float> @_mm512_set1_ps(float %12)
  %13 = load float, ptr %7, align 4
  %call178 = call <16 x float> @_mm512_set1_ps(float %13)
  %14 = load float, ptr %8, align 4
  %call180 = call <16 x float> @_mm512_set1_ps(float %14)
  br i1 %cmp217, label %common.ret, label %if.then225

common.ret:                                       ; preds = %if.then225, %entry
  ret void

if.then225:                                       ; preds = %entry
  store volatile i32 0, ptr null, align 4
  br label %common.ret
}

declare <16 x float> @_mm512_load_ps()

declare <16 x float> @_mm512_set1_ps(float)
